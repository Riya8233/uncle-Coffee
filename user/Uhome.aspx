<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="Uhome.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home-header" class="zooming-slider dark fullheight">
    <div class="bg-transparent fullheight">
      <!-- Slider content -->
      <div class="slider-content">
        <!-- Text Rotater -->
        <ul id="fade">
          <li>
            <h1>Come in & Taste</h1>
          </li>
          <li>
            <h1>most delicious food</h1>
          </li>
          <li>
            <h1>most delicious desserts</h1>
          </li>
        </ul>
        <!-- End Text Rotater -->
        <i class="icon-home-ico"></i>
        <p class="text-uppercase">We Create Sweet Memories</p>
     <%--   <a href="about.html" class="btn btn-gold white">DISCOVER MORE</a> </div>--%>
      <!-- End Slider content  -->
    </div>

  </section>
    <div id="content">
    <!-- welcome block
    ============================================= -->
    <section  class="padding-100 welcome-block">
      <div class="container">
        <div class="row">
          <!-- Left Img Intro -->
          <div class="col-md-4"> <img class="img-responsive" src="img/Left-Image.jpg"  alt=""> </div>
          <!-- End Left Img Intro -->
          <!-- Intro Text Center -->
          <div class="col-md-4 text-center">
          <!-- Head Title -->
            <div class="head_title">
                <i class="icon-intro"></i>
                <h1>ART OF FOOD</h1>
                <span class="welcome">Welcome to The Bungalow Cafe</span>
            </div>
            <!-- End# Head Title -->
            <p>Majesty is  a team work of  The Bungalow Cafe, we aim at promoting the foodstuff industry through the branches , we establish and through the new dishes. and integrate between different cultures.</p>
            <a href="aboutus.aspx" class="btn btn-gold">READ MORE</a> </div>
          <!-- End intro center -->
          <!-- Right Img Intro -->
          <div class="col-md-4"> <img class="img-responsive" src="img/right-image.jpg" alt=""> </div>
          <!-- End Right Img Intro -->
        </div>
      </div>
    </section>

    <!-- End welcome block -->
    <!-- Discover
    ============================================= -->
    <section id="slide-2" class="discover dark text-center">
      <!-- Parallax Bg -->
      <div class="bcg background14"
        data-center="background-position: 50% 0px;"
        data-bottom-top="background-position: 50% 100px;"
        data-top-bottom="background-position: 50% -100px;"
        data-anchor-target="#slide-2"
    >
        <!-- Bg Transparent -->
        <div class="bg-transparent padding-100" >
          <div class="container">
            <h1>WE CREATE DELICOUS MEMORIES</h1>
            <p class="text-uppercase">You can promote your creative parallax effects</p>
            <a href="aboutus.aspx" class="btn btn-gold white">DISCOVER MORE</a> </div>
        </div>
        <!-- End Bg transparent -->
      </div>
      <!-- End Parallax Bg -->
    </section>
    <!-- End Discover -->
    <!-- Menu Today
    ============================================= -->
    <div class="menu_today dark padding-100">
      <div class="container">
        <div class="row">
          <!-- Menu Item -->
          <div class="menu-item col-md-4 col-sm-4 col-xs-12">
            <figure> <img class="img-responsive" src="img/block1.jpg" alt="RELAXING AMBIENCE" />
              <figcaption class="text-center">
                <div class="fig_container">
                  <h3>RELAXING AMBIENCE</h3>
                  <p>Creating good mood</p>
                </div>
              </figcaption>
            </figure>
          </div>
          <!-- End Menu Item -->
          <!-- Menu Item -->
          <div class="menu-item col-md-4 col-sm-4 col-xs-12">
            <figure> <img class="img-responsive" src="img/block2.jpg" alt="RELAXING AMBIENCE" />
              <figcaption class="text-center">
                <div class="fig_container">
                  <h3>SUNDAY</h3>
                  <p>We Open</p>
                </div>
              </figcaption>
            </figure>
          </div>
          <!-- End Menu Item -->
          <!-- Menu Item -->
          <div class="menu-item col-md-4 col-sm-4 col-xs-12">
            <figure> <img class="img-responsive" src="img/block3.jpg" alt="RELAXING AMBIENCE" />
              <figcaption class="text-center">
                <div class="fig_container">
                  <h3>DIET FOODS</h3>
                  <p>We Offer Diet Food</p>
                </div>
              </figcaption>
            </figure>
          </div>
          <!-- End Menu Item -->
        </div>
      </div>
    </div>
         <section class="padding-100 our_menu">
      <div class="container">
        <div class="row">
        <!-- Head Title -->
       <%-- <div class="head_title">
            <i class="icon-intro"></i>
            <h1>OUR MENU</h1>
            <span class="welcome">Choose & Taste</span>
        </div>--%>
        <!-- End# Head Title -->
        
          <!-- Menu Tabs -->
         <%-- <div class="menu_tabs">
            <div class="row">
              <!-- Our menu tab container  -->
              <div class="col-md-12 col-md-12 col-sm-12 col-xs-12 our-menu-tab-container">
                <!-- Tab menu -->
                <div class="col-md-2 col-sm-3 col-xs-12 tab-menu">
                  <div class="list-group"> <a href="#" class="list-group-item active text-center"> STARTERS </a> <a href="#" class="list-group-item text-center"> DISHES </a> <a href="#" class="list-group-item text-center"> DESERT </a> <a href="#" class="list-group-item text-center"> DRINKS </a> </div>
                </div>
                <!-- Tab menu -->
                <!-- Our Menu Tabs -->
                <div class="col-md-10 col-sm-9 col-xs-12 our-menu-tabs">
                  <!-- Tab content  -->
                  <div class="tab-content active">
                    <!-- Our Menu Slider -->
                    <div class="our-menu-slider">
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/starter_1.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Starter Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/starter_2.jpg" alt="Food menu">
                        <!-- Item description -->
                        <div class="item_desc">
                          <h3>Starter Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/starter_3.jpg" alt="Food menu">
                        <!-- Item description -->
                        <div class="item_desc">
                          <h3>Starter Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/starter_4.jpg" alt="Food menu">
                        <!-- Item description -->
                        <div class="item_desc">
                          <h3>Starter Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                    </div>
                    <!-- End our menu slider -->
                    <a href="menu_gird.html" class="view_all btn btn-gold ">View All STARTERS</a> </div>
                  <!-- End Tab content -->
                  <!-- Tab content  -->
                  <div class="tab-content">
                    <!-- Our Menu Slider -->
                    <div class="our-menu-slider">
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/dishes_1.jpg" alt="Food menu">
                        <!-- Item description -->
                        <div class="item_desc">
                          <h3>Dish Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End Item -->
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/dishes_2.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Dish Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End Item -->
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/dishes_3.jpg" alt="Food menu">
                        <div class="item_desc">
                          <h3>Dish Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End Item -->
                      <!-- Item -->
                      <div class="item"><img class="lazyOwl" src="img/menu/menu_home_1/dishes_4.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Dish Name <span class="price pull-right">$28.99</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End Item -->
                    </div>
                    <!-- End our menu slider -->
                    <a href="menu_gird.html" class="view_all btn btn-gold">View All Dishes</a> </div>
                  <!-- End Tab content  -->
                  <!-- Tab content -->
                  <div class="tab-content">
                    <!-- Our Menu slider -->
                    <div class="our-menu-slider">
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/desert_1.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Desert Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/desert_2.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Desert Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/desert_3.jpg" alt="Food menu">
                        <!-- Item description -->
                        <div class="item_desc">
                          <h3>Desert Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/desert_4.jpg" alt="Food menu">
                        <!-- Item description-->
                        <div class="item_desc">
                          <h3>Desert Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                    </div>
                    <!-- End menu slider -->
                    <a href="menu_gird.html" class="view_all btn btn-gold">View All Desert</a> </div>
                  <!-- Tab content -->
                  <!-- Tab content -->
                  <div class="tab-content">
                    <!-- Our menu slider -->
                    <div class="our-menu-slider">
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/drinks_1.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Drink Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/drinks_2.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Drink Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/drinks_3.jpg" alt="Food menu">
                        <!-- Item Description -->
                        <div class="item_desc">
                          <h3>Drink Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                      <!-- Item -->
                      <div class="item"> <img class="lazyOwl" src="img/menu/menu_home_1/drinks_4.jpg" alt="Food menu">
                        <!-- Item Discription -->
                        <div class="item_desc">
                          <h3>Drink Name <span class="price pull-right">282.99 $</span></h3>
                          <!-- Rating -->
                          <fieldset class="rating">
                            <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span class="active"><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span> <span><i class="fa fa-star"></i></span>
                          </fieldset>
                          <!-- End rating -->
                          <p>Aenean commodo ligula eget dolor enean massa. Cum sociis natoque penatibus.</p>
                          <div class="form-group buttons"> <a class="btn btn-gold" href="#"><i class="fa fa-shopping-cart"></i></a> <a class="btn btn-gold" href="menu_single.html"><i class="fa fa-link"></i></a> </div>
                        </div>
                        <!-- End item description -->
                      </div>
                      <!-- End item -->
                    </div>
                    <!-- End menu slider -->
                    <a href="menu_gird.html" class="view_all btn btn-gold">View All Drinks</a> </div>
                  <!-- Tab content -->
                </div>
                <!-- End Our Menu Tabs -->
              </div>
              <!-- End Our menu tab container -->
            </div>
          </div>--%>
          <!-- End Menu Tabs  -->
        </div>
      </div>
   
    <!-- End our menu -->
    <!-- Video 
    ============================================= -->
    <section id="slide-04" class="video dark text-center" >
      <!-- BG Parallax -->
      <div class="bcg background16"
        data-center="background-position: 50% 0px;"
        data-bottom-top="background-position: 50% 100px;"
        data-top-bottom="background-position: 50% -100px;"
        data-anchor-target="#slide-04"
    >
        <!-- Bg transparent -->
      <%--  <div class="bg-transparent padding-100">
          <!-- Left bg -->
          <div class="left_bg"> <img  src="img/background/left_bg.png" alt=""> </div>
          <!-- End left bg -->
          <!-- Right bg -->
          <div class="right_bg"> <img  src="img/background/right_bg.png" alt=""> </div>
          <!-- End right bg -->
          <!-- Left bg2 -->
          <div class="right_bg2"> <img  src="img/background/right_bg2.png" alt=""> </div>
          <!-- End right bg2 -->
          <div class="container">
            <div class="row">
              <!-- Video source -->
              <div class="col-md-5">
                <div class="embed-responsive embed-responsive-16by9">
                  <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/23851992"  ></iframe>
                </div>
              </div>
              <!-- End video source -->
              <!-- Text video center -->
              <div class="col-md-7 text-center">
                <h1 class="">MAJESTY IN VIDEO</h1>
                <b>You can add all videos format</b>
                <p class="italic mt40">Nulla facilisi. Nunc id mi enim. Phasellus tortor nisl, auctor id elit congue, consectetur pharetra leo. Suspendisse eu libero nunc. Phasellus at justo ut lorem semper fringilla. Ut tincidunt, odio sit amet pellentesque venenatis, felis erat pulvinar enim, eu tristique mi lectus at purus. Curabitur iaculis congue laoreet. Vestibulum dignissim.</p>
              </div>
              <!-- End Text video center -->
            </div>
          </div>
        </div>--%>
        <!-- End bg transpernt -->
      </div>
      <!-- End bg parallax -->
    </section>
    <!-- End video -->
    <!-- Latest News
    ============================================= -->
    <section class="latest_news">
      <div class="container">
        <div class="row">
         <!-- Head Title -->
            <div class="head_title">
                <i class="icon-intro"></i>
                <h1>Latest News</h1>
                <span class="welcome">Stay up to Date</span>
            </div>
            <!-- End# Head Title -->
         
          <!-- News Content -->
          <div class="news-content dark">
            <!-- News Item -->
            <div class="news-item col-md-4 col-sm-4 col-xs-12">
              <figure> <img class="img-responsive" src="img/blog/block4.jpg" alt="RELAXING AMBIENCE" />
                <figcaption class="text-center">
                  <div class="fig_container"> <i class="fa fa-picture-o"></i>
                    <h3><a >HAPPY CRISTMAS</a></h3>
                    <p>Event</p>
                    <div class="fig_content"> <a ></a> </div>
                  </div>
                  <span class="btn btn-gold primary-bg white">30 DECEMBER 2022</span> </figcaption>
              </figure>
            </div>
            <!-- End News Item -->
            <!-- News Item -->
            <div class="news-item col-md-4 col-sm-4 col-xs-12">
              <figure> <img class="img-responsive" src="img/blog/block5.jpg" alt="RELAXING AMBIENCE" />
                <figcaption class="text-center">
                  <div class="fig_container"> <i class="fa fa-video-camera"></i>
                    <h3><a >VALENTINE DAY</a></h3>
                    <p>news</p>
                    <div class="fig_content"> <a> .</a> </div>
                  </div>
                  <span class="btn btn-gold primary-bg white">14 FEBURARY 2022</span> </figcaption>
              </figure>
            </div>
            <!-- End News Item -->
            <!-- News Item -->
            <div class="news-item col-md-4 col-sm-4 col-xs-12 ">
              <figure> <img class="img-responsive" src="img/blog/block6.jpg" alt="RELAXING AMBIENCE" />
                <figcaption class="text-center">
                  <div class="fig_container"> <i class="fa fa-volume-up"></i>
                    <h3><a>Global orchestra</a></h3>
                    <p>Event</p>
                    <div class="fig_content"> <a></a> </div>
                  </div>
                  <span class="btn btn-gold primary-bg white">14 MAR4CH 2022</span> </figcaption>
              </figure>
            </div>
            <!-- End News Item -->
          </div>
          <!-- End News Content -->
        </div>
      </div>
    </section>
         </section>
        <section class="extra_touch padding-100 text-center">
                <div class="container">
                    <div class="row">
                        <h2>Come & <span>Experiences</span> our best of world class cuisine</h2>
                        <a href="contactus.aspx" class="btn black btn-gold ">GET IN TOUCH</a>
                    </div>
                </div>
            </section>
    <!-- End menu today -->
    <!-- Reservation
    ============================================= -->
 
</asp:Content>
