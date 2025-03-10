<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class UserFilterMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
             // Check if user is authenticated
             if (!Auth::check()) {
                return redirect()->route('user.login')->with('error', 'Please login to access this page.');
            }

            // You can also check for specific user roles
            if (Auth::user()->role !== 'user') {
                return redirect()->route('home')->with('error', 'Unauthorized access.');
            }

            return $next($request);
    }
}
