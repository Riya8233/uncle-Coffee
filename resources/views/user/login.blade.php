@extends('layouts.auth')

@section('title', 'User - Login')

@section('content')
    <h4>Hello! Let's get started</h4>

    @include('partials.message-bag')

    <form class="pt-3" method="POST" action="{{ route('user.login.process') }}">
        @csrf
        <div class="form-group">
            <input type="email" name="email" class="form-control form-control-lg" id="Email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <input type="password" name="password" class="form-control form-control-lg" id="Password" placeholder="Password" required>
        </div>
        <div class="mt-3 mb-2">
            <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
        </div>
        <div class="mb-2">
            <a class="btn btn-block btn-warning auth-form-btn" href="{{ route('password.request') }}">Forgot password?</a>
        </div>
        <div class="mb-2">
            <a class="btn btn-block btn-warning auth-form-btn" href="{{ route('user.signup') }}">Sign up</a>
        </div>
        <div class="mb-2">
            <a class="btn btn-block btn-warning auth-form-btn" href="{{ route('google.login') }}">Sign in with Google</a>
        </div>
    </form>
@endsection
