<?php

namespace App\Http\Controllers;

use Exception;
use Stripe\Charge;
use Stripe\Stripe;
use App\Models\Order;
use App\Mail\OrderEmail;
use App\Models\Customer;
use Stripe\PaymentIntent;
use App\Models\SiteSetting;
use Illuminate\Http\Request;
use App\Helpers\TwilioHelper;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use App\Models\RestaurantPhoneNumber;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Traits\CartTrait;
use App\Http\Controllers\Traits\MainSiteViewSharedDataTrait;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Illuminate\Support\Facades\Storage;


class PaymentController extends Controller
{
    use CartTrait;
    use MainSiteViewSharedDataTrait;

    public function __construct()
    {
        $this->shareMainSiteViewData();
    }



    public function payment()
    {
        // Run all required session checks
        $this->runAllChecks();

        // Retrieve customer details from the session
        $customerDetails = Session::get('customer_details', []);

        // Retrieve cart items from session
        $cart_items = session()->get('customer', []);

        // Retrieve order no. from session
        $order_no = session('order_no');

        // Retrieve selected payment option
        $payment_option = Session::get('payment_option');

        // Check if the order number already exists
        if (Order::where('order_no', $order_no)->exists()) {
            return redirect()->route('menu')->withErrors('The order number already exists. Please try again.');
        }

        // Calculate total price
        $totalPrice = array_reduce($cart_items, function ($carry, $item) {
            return $carry + ($item['price'] * $item['quantity']);
        }, 0);

        // Create customer record
        $customer = Customer::create([
            'name' => $customerDetails['name'],
            'email' => $customerDetails['email'],
            'phone_number' => $customerDetails['phone_number'],
            'address' => $customerDetails['address'] . " " . $customerDetails['city'] . " " . $customerDetails['state'] . " " . $customerDetails['postcode'],
        ]);

        // Create a new order
        $order = Order::create([
            'customer_id' => $customer->id,
            'order_no' => $order_no,
            'order_type' => 'online',
            'created_by_user_id' => null,
            'updated_by_user_id' => null,
            'total_price' => $totalPrice,
            'status' => 'pending',
            'status_online_pay' => 'unpaid',
            'payment_method' => $payment_option,  // Use selected payment option
            'additional_info' => $customerDetails['additional_info'],
        ]);

        // Create order items
        foreach ($cart_items as $cart_item) {
            $order->orderItems()->create([
                'menu_name' => $cart_item['name'],
                'quantity' => $cart_item['quantity'],
                'subtotal' => $cart_item['price'] * $cart_item['quantity'],
            ]);
        }

        if ($payment_option === "upi") {
            // Get merchant UPI ID
            $upi_id = "riyapatel180904@okicici";

            $upi_link = "upi://pay?pa={$upi_id}&pn=Uncle_coffee&mc=&tid={$order_no}&tr={$order_no}&tn=Payment_for_Order{$order_no}&am={$totalPrice}&cu=INR";

            \Mail::to($customerDetails['email'])->send(new \App\Mail\UPIPaymentMail($customer->name, $upi_link));
        }

        return redirect()->route('payment.success')->with('success', 'Your order has been placed successfully.');
    }





    public function paymentCancel()
    {
        return view('main-site.payment-cancel');
    }

    public function paymentSuccess(Request $request)
    {
        // Run all required session checks
        $this->runAllChecks();

        // Retrieve the order number from the session
        $order_no = session('order_no');

        // Check if the order exists using order_no (for COD) or UPI transaction
        $order = Order::with(['orderItems', 'customer'])
            ->where('order_no', $order_no)
            ->first();

        if (!$order) {
            return redirect()->route('menu')->withErrors('Order verification failed');
        }

        // If the payment method is COD, mark as unpaid and send confirmation email
        if ($order->payment_method === 'cod') {
            $order->status_online_pay = 'unpaid';
            $order->save();
            $this->sendOrderEmail($order);
            $this->clearOrderSession();
            return view('main-site.payment-success', compact('order'));
        }
        // If the payment method is UPI, verify the payment status
        if ($order->payment_method === 'upi') {
            if ($order->status_online_pay === 'unpaid') {
                $order->status_online_pay = 'paid';
                $order->save();
                $this->sendOrderEmail($order);
                $this->clearOrderSession();
                return view('main-site.payment-success', compact('order'));
            } elseif ($order->status_online_pay === 'paid') {
                $this->clearOrderSession();
                return view('main-site.payment-success', compact('order'));
            }

            return redirect()->route('menu')->withErrors("There was an issue verifying your UPI payment. Please try again.");
        }

        return redirect()->route('menu')->withErrors('Order verification failed!');
    }


    /**
     * Send order confirmation email.
     */
    private function sendOrderEmail($order)
    {
        try {
            Mail::to($order->customer->email)->send(new OrderEmail(
                $order->orderItems,
                $order->customer->name,
                $order->customer->email,
                $order->order_no,
                $order->delivery_fee,
                $order->total_price,
                config('site.email'),
                RestaurantPhoneNumber::first() ? RestaurantPhoneNumber::first()->phone_number : null
            ));
        } catch (Exception $e) {
            Log::error('Order email failed to send: ' . $e->getMessage());
        }
    }








    // Check if a session key exists and the cart is not empty, otherwise redirect with an error message
    protected function checkCart()
    {

        if (!session()->has($this->cartkey) || empty(session()->get($this->cartkey))) {
            return redirect()->route('menu')->withErrors('Your cart is empty. Please add items to your cart before checking out.')->send();
        }
    }

    // Check if a session customer_details exists, otherwise redirect with an error message
    protected function checkCustomerDetails()
    {
        if (!session()->has('customer_details')) {
            return redirect()->route('menu')->withErrors('We could not retrieve your customer details. Please try again or contact support if the issue persists.')->send();
        }
    }


    // Check if a session order_no exists, otherwise redirect with an error message
    protected function checkOrderNo()
    {
        if (!session()->has('order_no')) {
            //return redirect()->route('menu')->withErrors('We could not retrieve your order number. Please try again or contact support if the issue persists.')->send();
            return redirect()->route('menu')->send();
        }
    }


    public function handleStripeWebhook(Request $request)
    {
        $endpoint_secret =  config('services.stripe.webhookkey');

        // Retrieve the raw payload
        $payload = @file_get_contents('php://input');
        $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
        $event = null;


        try {
            // Verify the event signature
            $event = \Stripe\Webhook::constructEvent($payload, $sig_header, $endpoint_secret);

            // Handle specific event types
            if ($event->type === 'checkout.session.completed') {
                $session = $event->data->object;

                $order = Order::with(['orderItems', 'customer'])->where('session_id', $session->id)->first();


                if ($order->status_online_pay === 'unpaid') {
                    $order->status_online_pay = 'paid';
                    $order->save();

                    // Send the email
                    try {
                        Mail::to($order->customer->email)->send(new OrderEmail(
                            $order->orderItems,
                            $order->customer->name,
                            $order->customer->email,
                            $order->order_no,
                            $order->delivery_fee,
                            $order->total_price,
                            config('site.email'),
                            RestaurantPhoneNumber::first() ? RestaurantPhoneNumber::first()->phone_number : null
                        ));
                    } catch (Exception $e) {
                        Log::error('Order email failed to send: ' . $e->getMessage());
                    }

                    // send whatsapp message
                    // $this->sendWhatsAppNotification($order);
                }
            }

            return response('Webhook handled', 200);
        } catch (\UnexpectedValueException $e) {
            // Invalid payload
            Log::error('Invalid payload: ' . $e->getMessage());
            return response('Invalid payload', 400);
        } catch (\Stripe\Exception\SignatureVerificationException $e) {
            // Invalid signature
            Log::error('Invalid signature: ' . $e->getMessage());
            return response('Invalid signature', 400);
        } catch (Exception $e) {
            // General error
            Log::error('Webhook error: ' . $e->getMessage());
            return response('Webhook error', 500);
        }
    }

    // Call all checks at once
    protected function runAllChecks()
    {
        $this->checkCart();
        $this->checkCustomerDetails();
        $this->checkOrderNo();
    }

    protected function clearOrderSession()
    {
        session()->forget([
            'customer',
            'customer_details',
            'delivery_details',
            'order_no'
        ]);
    }
}
