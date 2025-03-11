<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'customer_name' => 'required|string',
            'ordered_food' => 'required|string',
            'favorite_food' => 'required|string',
            'food_rating' => 'required|integer|min:1|max:10',
            'restaurant_rating' => 'required|integer|min:1|max:10',
            'staff_rating' => 'required|integer|min:1|max:10',
        ]);

        Review::create($request->all());

        return response()->json(['message' => 'Review stored successfully!']);
    }
}
