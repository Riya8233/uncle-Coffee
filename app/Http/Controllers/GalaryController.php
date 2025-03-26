<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestaurantAddress;
use App\Models\RestaurantPhoneNumber;
use App\Models\SocialMediaHandle;

class GalaryController extends Controller
{
    public function index()
    {
        $socialMediaHandles = SocialMediaHandle::all();
        $firstRestaurantAddress = RestaurantAddress::first();
        $firstRestaurantPhoneNumber = RestaurantPhoneNumber::first();
        $whatsAppNumber = RestaurantPhoneNumber::where('use_whatsapp', '1')->first();
        $images = [
            '/assets/images/i (1).webp',
            '/assets/images/i (2).webp',
            '/assets/images/i (3).webp',
            '/assets/images/i (4).webp',
            '/assets/images/i (5).webp',
            '/assets/images/i (6).webp',
            '/assets/images/i (7).webp',
            '/assets/images/i (8).webp',
            '/assets/images/i (9).webp',
            '/assets/images/i (10).webp',
            '/assets/images/i (11).webp',
            '/assets/images/i (12).webp',
        ];
        return view('gallery.index', compact(
            'images',
            'socialMediaHandles',
            'firstRestaurantAddress',
            'firstRestaurantPhoneNumber',
            'whatsAppNumber'
        ));

    }
}
