<nav class="navbar navbar-expand-lg">
    <a class="navbar-brand" href="{{ route('home') }}">
        <img class="logo_light" src="/assets/images/logo_light.png" alt="logo" style="height: 11vh;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-expanded="false">
        <span class="ion-android-menu"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li>
                <a href="{{ route('home') }}" class="nav-link {{ Request::routeIs('home') ? 'active' : '' }}">Home</a>
            </li>
            <li>
                <a href="{{ route('menu') }}" class="nav-link {{ Request::is('menu*') ? 'active' : '' }}">Menu</a>
            </li>
            <li>
                <a href="{{ route('blogs') }}" class="nav-link {{ Request::is('blog*') ? 'active' : '' }}">Blogs</a>
            </li>
            <li>
                <a href="{{ route('about') }}"
                    class="nav-link {{ Request::routeIs('about') ? 'active' : '' }}">About</a>
            </li>
            <li>
                <a href="{{ route('contact') }}"
                    class="nav-link {{ Request::routeIs('contact') ? 'active' : '' }}">Contact</a>
            </li>
            <li>
                <a href="{{ route('gallery') }}"
                    class="nav-link {{ Request::routeIs('gallery') ? 'active' : '' }}">gallery</a>
            </li>
            <li>
                <a href="{{ route('offers') }}"
                    class="nav-link {{ Request::routeIs('offers') ? 'active' : '' }}">offers</a>
            </li>

            @guest
                <li>
                    <a href="{{ route('user.login') }}"
                        class="nav-link {{ Request::routeIs('user.login') ? 'active' : '' }}">Login</a>
                </li>
                <li>
                    <a href="{{ route('user.signup') }}"
                        class="nav-link {{ Request::routeIs('user.signup') ? 'active' : '' }}">Sign Up</a>
                </li>
            @endguest

            @auth
                @if (Auth::user()->role === 'admin')
                    <li>
                        <a href="{{ route('admin.index') }}" class="nav-link {{ Request::is('admin*') ? 'active' : '' }}">
                            Admin Dashboard
                        </a>
                    </li>
                @endif
                @if (!Request::routeIs('user.login') && !Request::routeIs('user.signup'))
                    <li>
                        <a data-bs-toggle="modal" data-bs-target="#logoutModal" href="#" class="nav-link">
                            Logout
                        </a>
                    </li>
                @endif
            @endauth
        </ul>
    </div>

    @if (!Request::routeIs('user.login') && !Request::routeIs('user.signup')  && !Request::routeIs('admin.login') && !Request::routeIs('offers')  && !Request::routeIs('gallery') )
        <ul class="navbar-nav attr-nav align-items-center">
            <li>
                <a class="nav-link {{ Request::routeIs('cart') ? 'active' : '' }}"
                    href="{{ route('customer.cart') }}">
                    <i class="linearicons-cart"></i>
                    <span class="cart_count" id="cart_count">{{ $customer_total_cart_items }}</span>
                </a>
            </li>
        </ul>
        @if ($firstRestaurantPhoneNumber)
            <div class="header_btn d-sm-block d-none">
                <a href="tel:{{ $firstRestaurantPhoneNumber->phone_number }}"
                    class="btn btn-default rounded-0 ml-2 btn-sm">
                    <i class="fa fa-phone"></i> CALL US
                </a>
            </div>
        @endif
    @endif


</nav>
