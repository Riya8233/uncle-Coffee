<!DOCTYPE html>
<html lang="en">

<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="{{ config('site.name') }}" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Best restaurant experience, don't miss out on {{ config('site.name') }}.">
<meta name="keywords" content="African food, Fast Food, cafe, bar, BBQ, restaurant, sushi, steakhouse, pizza, Mexican Food, menu, meat, Breakfast, Lunch, Dinner, Delicious, Tasty, Snack, Wine, Cola">
<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- SITE TITLE -->
<title>{{ config('site.name') }} - @yield('title')</title>
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="/favicon_io/favicon.ico" />

@stack('styles')
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <style>
    /* Overlay Background */
    #popup-overlay {
        display: none;
        position: fixed;
        top: 0; left: 0;
        width: 100%; height: 100%;
        background: rgba(0, 0, 0, 0.6);
        z-index: 999;
        backdrop-filter: blur(5px);
    }

    /* Popup Box */
    #newsletter-popup {
        display: none;
        position: fixed;
        top: 50%; left: 50%;
        transform: translate(-50%, -50%);
        width: 90%;
        max-width: 400px;
        background: #fff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        z-index: 1000;
        text-align: center;
        animation: fadeIn 0.4s ease-in-out;
    }

    /* Smooth Popup Animation */
    @keyframes fadeIn {
        from { opacity: 0; transform: translate(-50%, -60%); }
        to { opacity: 1; transform: translate(-50%, -50%); }
    }

    /* Form Inputs */
    #newsletter-form input {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
    }

    /* Subscribe Button */
    #newsletter-form button {
        width: 100%;
        padding: 12px;
        background: #e74c3c;
        color: #fff;
        border: none;
        border-radius: 6px;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
    }

    #newsletter-form button:hover {
        background: #c0392b;
    }

    /* Close Button */
    #close-popup {
        display: inline-block;
        margin-top: 10px;
        padding: 8px 15px;
        background: #333;
        color: #fff;
        border-radius: 6px;
        cursor: pointer;
        font-size: 14px;
        transition: 0.3s;
    }

    #close-popup:hover {
        background: #555;
    }

    /* Responsive Adjustments */
    @media (max-width: 500px) {
        #newsletter-popup {
            width: 95%;
            padding: 20px;
        }
        #newsletter-form input, #newsletter-form button {
            font-size: 14px;
            padding: 10px;
        }
    }
    </style>
</head>

<body>

<!-- LOADER -->
<div id="preloader">
	<div class="loader_wrap">
        <div class="sk-chase">
          <div class="sk-chase-dot"></div>
          <div class="sk-chase-dot"></div>
          <div class="sk-chase-dot"></div>
          <div class="sk-chase-dot"></div>
          <div class="sk-chase-dot"></div>
          <div class="sk-chase-dot"></div>
        </div>
    </div>
</div>
<!-- END LOADER -->
 @yield('header')

 @yield('content')

 @include('partials.logout')

 @include('partials.footer')

<!-- Newsletter Popup -->
<div id="popup-overlay"></div>
<div id="newsletter-popup">
    <h2 style="color: #e74c3c;">📢 Subscribe to Our Newsletter</h2>
    <p>Stay updated with our latest news & offers!</p>
    <form id="newsletter-form">
        <input type="text" id="name" placeholder="Your Name" required>
        <input type="email" id="email" placeholder="Your Email" required>
        <button type="submit">Subscribe</button>
    </form>
    <span id="close-popup">Close</span>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        let delayTime = Math.floor(Math.random() * (50 - 30 + 1) + 30) * 1000;

        if (!sessionStorage.getItem("newsletter_shown")) {
            setTimeout(function () {
                document.getElementById("popup-overlay").style.display = "block";
                document.getElementById("newsletter-popup").style.display = "block";
                sessionStorage.setItem("newsletter_shown", "true");
            }, delayTime);
        }

        // Close Popup
        document.getElementById("close-popup").addEventListener("click", function () {
            document.getElementById("popup-overlay").style.display = "none";
            document.getElementById("newsletter-popup").style.display = "none";
        });

        // Handle Form Submission
        document.getElementById("newsletter-form").addEventListener("submit", function (e) {
            e.preventDefault();
            let name = document.getElementById("name").value;
            let email = document.getElementById("email").value;

            fetch("{{ url('/subscribe') }}", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]').content
                },
                body: JSON.stringify({ name, email })
            })
            .then(response => response.json())
            .then(data => {
                alert("✅ " + data.message);
                document.getElementById("popup-overlay").style.display = "none";
                document.getElementById("newsletter-popup").style.display = "none";
            })
        });
    });
</script>




@stack('scripts')



</body>
</html>
