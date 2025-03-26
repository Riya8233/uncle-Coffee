<?php

namespace App\Http\Controllers;

use App\Models\RestaurantAddress;
use App\Models\RestaurantPhoneNumber;
use App\Models\SocialMediaHandle;
use Illuminate\Http\Request;
use PDO;

class OfferController extends Controller
{
    public function index()
    {
        $socialMediaHandles = SocialMediaHandle::all();
        $firstRestaurantAddress = RestaurantAddress::first();
        $firstRestaurantPhoneNumber = RestaurantPhoneNumber::first();
        $whatsAppNumber = RestaurantPhoneNumber::where('use_whatsapp', '1')->first();
        $offers = [
            ['title' => 'Buy 1 Get 1 Free', 'description' => 'Limited time offer on all beverages.'],
            ['title' => '20% Off', 'description' => 'Get 20% off on orders above ₹500.'],
            ['title' => 'Every Friday 40% Off', 'description' => 'Only for dine-in customers.'],
            ['title' => 'Thursday Musical Night', 'description' => 'Enjoy live music performances while you dine.'],
            ['title' => 'Monday Candle Light Dinner', 'description' => 'A romantic evening with special candlelight setup.'],
            ['title' => 'Tuesday & Saturday Buy 1 Get 1', 'description' => 'Offer applicable on selected menu items.'],
            ['title' => 'Exclusive Menu', 'description' => 'Check out our delicious and diverse menu.'],
            ['title' => 'Dine-In Experience', 'description' => 'Enjoy a premium dining experience with us.']
        ];
        return view('offers.index', compact(
            'offers',
            'socialMediaHandles',
            'firstRestaurantAddress',
            'firstRestaurantPhoneNumber',
            'whatsAppNumber'
        ));
    }
}
