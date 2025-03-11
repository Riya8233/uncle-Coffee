@extends('layouts.auth')

@section('title', 'Verify OTP')

@section('content')
    <h4>Verify Your Email</h4>

    @if(session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form class="pt-3" method="POST" action="{{ route('user.verify.otp.post') }}">
        @csrf
        <div class="form-group">
            <input type="text" name="otp" class="form-control form-control-lg" placeholder="Enter OTP" required>
        </div>
        <div class="mt-3 mb-2">
            <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Verify OTP</button>
        </div>
    </form>
@endsection
