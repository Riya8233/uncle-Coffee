<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $fillable = ['customer_name', 'ordered_food', 'favorite_food', 'food_rating', 'restaurant_rating', 'staff_rating'];
}
