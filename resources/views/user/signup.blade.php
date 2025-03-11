@extends('layouts.auth')

@section('title', 'user - signup')

@section('content')
    <h4>Hello! let's get started</h4>

    @include('partials.message-bag')

    <form class="pt-3" method="POST" action="{{ route('user.signup.process') }}">
        @csrf
        <div class="form-group">
            <input type="email" name="email" class="form-control form-control-lg" id="Email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <input type="password" name="password" class="form-control form-control-lg" id="Password" placeholder="Password" required>
        </div>
        <div class="mt-3 mb-2">
            <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN UP</button>
        </div>
        <div class="mb-2">
            <a class="btn btn-block btn-warning auth-form-btn" href="{{ route('user.login') }}">Back to login</a>
        </div>
        <div class="mb-2">
            <a class="btn btn-block btn-warning auth-form-btn" href="{{ route('google.login') }}">Sign up with Google</a>
        </div>
    </form>
@endsection
