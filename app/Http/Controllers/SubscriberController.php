<?php

namespace App\Http\Controllers;

use App\Models\Subscriber;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    public function store(Request $request) {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:subscribers,email'
        ]);

        Subscriber::create($request->all());

        return response()->json(['message' => 'Thank you for subscribing!']);
    }
}
