<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class UPIPaymentMail extends Mailable
{
    use Queueable, SerializesModels;

    public $name;
    public $upi_link;
    public $qrCodeUrl;

    public function __construct($name, $upi_link)
    {
        $this->name = $name;
        $this->upi_link = $upi_link;
        // $this->qrCodeUrl = $qrCodeUrl;
    }

    public function build()
    {
        return $this->subject('Your UPI Payment Link')
                    ->view('emails.upi_payment')
                    ->with([
                        'name' => $this->name,
                        'upi_link' => $this->upi_link,
                        // 'qrCodeUrl' => $this->qrCodeUrl,
                    ]);
    }
}

