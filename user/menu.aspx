<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <form id="form1" runat="server">


    <!-- banner 
    ============================================= -->
    <section class="banner dark">
        <div id="menu-parallax5">
            <div class="bcg background41"
                data-center="background-position: 50% 0px;"
                data-bottom-top="background-position: 50% 100px;"
                data-top-bottom="background-position: 50% -100px;"
                data-anchor-target="#menu-parallax5">
                <div class="bg-transparent">
                    <div class="banner-content">
                        <div class="container">
                            <div class="slider-content  ">
                                <i class="icon-home-ico"></i>
                                <h1>Menu</h1>
                                <p>Your Taste is Our Goal</p>
                                <ol class="breadcrumb">
                                    <li><a href="Uhome.aspx">Home</a></li>
                                    <li>Menu</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- End Banner content -->
                </div>
                <!-- End bg trnsparent -->
            </div>
        </div>
        <!-- Service parallax -->
    </section>
    <!-- End Banner -->
    <!-- Header
    ============================================= -->
    <%-- <header id="header" class="header-transparent">
    <div class="container">
      <div class="row">
        <div id="main-menu-trigger"><i class="fa fa-bars"></i></div>
        <!-- Logo
                    ============================================= -->
        <div id="logo"> <a href="index01.html" class="light-logo"><img src="img/logo.png" alt="Logo"></a> <a href="index01.html" class="dark-logo"><img src="img/logo_dark.png" alt="Logo"></a> </div>
        <!-- #logo end -->
        <!-- Primary Navigation
                    ============================================= -->
        <nav id="main-menu" class="dark">
          <ul>
            <li><a href="index01.html">
              <div>Home</div>
              </a>
              <ul>
                <li><a href="#">
                  <div>Layout</div>
                  </a>
                  <ul>
                    <li><a href="index01.html">
                      <div>Layout 1</div>
                      </a></li>
                    <li><a href="index02.html">
                      <div>Layout 2</div>
                      </a></li>
                    <li><a href="index03.html">
                      <div>Layout 3</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>Boxed</div>
                  </a>
                  <ul>
                    <li><a href="boxed/index01.html">
                      <div>Pattern</div>
                      </a></li>
                    <li><a href="boxed/index_bg_img.html">
                      <div>Image</div>
                      </a></li>
                    <li><a href="boxed/index_bg_color.html">
                      <div>Color</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>One Page</div>
                  </a>
                  <ul>
                    <li><a href="index_onepage_horizental.html">
                      <div>Horizental Menu</div>
                      </a></li>
                    <li><a href="index_onepage_vertical.html">
                      <div>Vertical Menu</div>
                      </a></li>
                    <li><a href="index_onepage_zooming.html">
                      <div>Image Zoom Panning BG</div>
                      </a></li>
                    <li><a href="index_onepage_fade.html">
                      <div>Image Fade BG</div>
                      </a></li>
                    <li><a href="index_onepage_slider.html">
                      <div>Image Slider</div>
                      </a></li>
                    <li><a href="index_onepage_slide_top.html">
                      <div>Image Slide Top</div>
                      </a></li>
                    <li><a href="index_onepage_fullscreen.html">
                      <div>Image Full Screen BG</div>
                      </a></li>
                    <li><a href="index_onepage_parallax.html">
                      <div>Image Parallax BG</div>
                      </a></li>
                    <li><a href="index_onepage_animation_bg.html">
                      <div>Image Animation BG</div>
                      </a></li>
                    <li><a href="index_onepage_interactive.html">
                      <div>Image Interactive BG</div>
                      </a></li>
                    <li><a href="index_onepage_video.html">
                      <div>HTML5 Video BG</div>
                      </a></li>
                    <li><a href="index_onepage_youtube.html">
                      <div>Youtube BG</div>
                      </a></li>
                    <li><a href="index_onepage_viemo.html">
                      <div>Viemo BG</div>
                      </a></li>
                    <li><a href="index_onepage_fullwidth.html">
                      <div>Full Width Slider</div>
                      </a></li>
                    <li><a href="index_onepage_animation.html">
                      <div>Animation</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>Styles</div>
                  </a>
                  <ul>
                    <li><a href="index_amrican.html">
                      <div>Amrican</div>
                      </a></li>
                    <li><a href="index_asian.html">
                      <div>Asian</div>
                      </a></li>
                    <li><a href="index_pizza.html">
                      <div>Pizza</div>
                      </a></li>
                    <li><a href="index_burger.html">
                      <div>Burger</div>
                      </a></li>
                    <li><a href="index_bakery.html">
                      <div>Bakery</div>
                      </a></li>
                    <li><a href="index_cafe.html">
                      <div>Cafe</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="index_animate.html">
                  <div>Animation</div>
                  </a></li>
              </ul>
            </li>
            <li class="mega-menu"><a href="#">
              <div>Menu</div>
              </a>
              <div class="mega-menu-content  col-1 clearfix">
                <ul>
                  <li class="mega-menu-title">
                    <div id="menu_carousel">
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/starter.jpg"  alt="starter">
                        <h2>Staters</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/dishes.jpg"  alt="dishes">
                        <h2>Dishes</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/fishes.jpg"  alt="fishes">
                        <h2>fishes</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/salads.jpg"  alt="salads">
                        <h2>Salads</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/deserts.jpg"  alt="deserts">
                        <h2>Deserts</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/drinks.jpg"  alt="drinks">
                        <h2>Drinks</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/soup.jpg"  alt="Soups">
                        <h2>Soups</h2>
                        </a> </div>
                      <div class="item"> <a href="menu_gird.html"> <img class="img-responsive" src="img/drop_menu/combo.jpg"  alt="Combo Meals">
                        <h2>Combo Meals</h2>
                        </a> </div>
                    </div>
                  </li>
                </ul>
              </div>
            </li>
            <li><a href="reservation.html">
              <div>reservation</div>
              </a> </li>
            <li><a href="#">
              <div>Blogs</div>
              </a>
              <ul>
                <li><a href="#">
                  <div>Gird</div>
                  </a>
                  <ul>
                    <li><a href="blog_gird_two_cloumn.html">
                      <div>Two Cloumn</div>
                      </a></li>
                    <li><a href="blog_gird_three_cloumn.html">
                      <div>Three Cloumn</div>
                      </a></li>
                    <li><a href="blog_gird_full_width_cloumn.html">
                      <div>Full Width</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>List</div>
                  </a>
                  <ul>
                    <li><a href="blog_list_style_1.html">
                      <div>List Style 1</div>
                      </a></li>
                    <li><a href="blog_list_style_2.html">
                      <div>List Style 2</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>Masonry</div>
                  </a>
                  <ul>
                    <li><a href="blog_masonry_two_cloumn.html">
                      <div>Two Cloumn</div>
                      </a></li>
                    <li><a href="blog_masonry_three_cloumn.html">
                      <div>Three Cloumn</div>
                      </a></li>
                    <li><a href="blog_masonry_fullwidth.html">
                      <div>Full Width</div>
                      </a></li>
                  </ul>
                </li>
                <li><a href="#">
                  <div>Single</div>
                  </a>
                  <ul>
                    <li><a href="blog_single_image.html">
                      <div>Image</div>
                      </a></li>
                    <li><a href="blog_single_slider.html">
                      <div>Slider</div>
                      </a></li>
                    <li><a href="blog_single_gallery.html">
                      <div>Gallery</div>
                      </a></li>
                    <li><a href="blog_single_lightbox.html">
                      <div>Lightbox</div>
                      </a></li>
                    <li><a href="blog_single_video.html">
                      <div>HTML5 Video</div>
                      </a></li>
                    <li><a href="blog_single_soundclouds.html">
                      <div>Soundcloud</div>
                      </a></li>
                    <li><a href="blog_single_youtube.html">
                      <div>Youtube</div>
                      </a></li>
                    <li><a href="blog_single_viemo.html">
                      <div>Viemo</div>
                      </a></li>
                    <li><a href="blog_single_blockquote.html">
                      <div>Blockquote</div>
                      </a></li>
                    <li><a href="blog_single_rightsidebar.html">
                      <div>Right Sidbar</div>
                      </a></li>
                    <li><a href="blog_single_leftsidebar.html">
                      <div>Left Sidebar</div>
                      </a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="events.html">
              <div>Events</div>
              </a> </li>
            <li><a href="contact.html">
              <div>Contact</div>
              </a> </li>
            <!-- Mega Menu
             ============================================= -->
            <li class="mega-menu"><a href="#">
              <div>Pages</div>
              </a>
              <div class="mega-menu-content style-dropdown col-4 clearfix">
                <ul>
                  <li class="mega-menu-title"><a href="#">
                    <div>About Us</div>
                    </a>
                    <ul>
                      <li><a href="about.html">
                        <div>About</div>
                        </a></li>
                      <li><a href="services.html">
                        <div>Services</div>
                        </a></li>
                      <li><a href="team.html">
                        <div>Team</div>
                        </a></li>
                      <li><a href="team_single.html">
                        <div>Single Team</div>
                        </a></li>
                      <li><a href="testimonials.html">
                        <div>Testimonials</div>
                        </a></li>
                      <li><a href="clients.html">
                        <div>Clients</div>
                        </a></li>
                      <li><a href="privacy.html">
                        <div>Privacy Policy</div>
                        </a></li>
                      <li><a href="sitemap.html">
                        <div>Sitemap</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title"><a href="#">
                    <div>Menu</div>
                    </a>
                    <ul>
                      <li><a href="menu_gird.html">
                        <div>Menu Gird</div>
                        </a></li>
                      <li><a href="menu_gird_fullwidth.html">
                        <div>Menu Gird Full Width</div>
                        </a></li>
                      <li><a href="menu_masonry.html">
                        <div>Menu Masonry</div>
                        </a></li>
                      <li><a href="menu_masonry_fullwidth.html">
                        <div>Menu Masonry Full Width</div>
                        </a></li>
                      <li><a href="menu_list.html">
                        <div>Menu List</div>
                        </a></li>
                      <li> <a href="menu_tabs.html">
                        <div>Menu Tabs</div>
                        </a></li>
                      <li><a href="menu_scroll.html">
                        <div>Menu Scroll</div>
                        </a></li>
                      <li><a href="menu_shown_all.html">
                        <div>Menu Shown All</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title"><a href="#">
                    <div>Menu Single</div>
                    </a>
                    <ul>
                      <li><a href="menu_single.html">
                        <div>Menu Details</div>
                        </a></li>
                      <li><a href="menu_single_rightsidebar.html">
                        <div>Menu With Right Siderbar </div>
                        </a></li>
                      <li><a href="menu_single_leftsidebar.html">
                        <div>Menu With Left Siderbar</div>
                        </a></li>
                    </ul>
                  </li>
                  <li class="mega-menu-title"><a href="#">
                    <div>Utlities</div>
                    </a>
                    <ul>
                      <li><a href="login_default.html">
                        <div>Login - Default</div>
                        </a></li>
                      <li><a href="login_fullscreen.html">
                        <div>Login - Full Screen</div>
                        </a></li>
                      <li><a href="login_video.html">
                        <div>Login - Video</div>
                        </a></li>
                      <li><a href="login_slider.html">
                        <div>Login - Slider</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title"><a href="#">
                    <div>Extra Utlities</div>
                    </a>
                    <ul>
                      <li><a href="404_default.html">
                        <div>404 - Default</div>
                        </a></li>
                      <li><a href="404_video.html">
                        <div>404 - Video</div>
                        </a></li>
                      <li><a href="404_animate_bg.html">
                        <div>404 - Animate BG</div>
                        </a></li>
                      <li><a href="coming_soon_default.html">
                        <div>Coming Soon - Default</div>
                        </a></li>
                      <li><a href="coming_soon_video.html">
                        <div>Coming Soon - Video</div>
                        </a></li>
                      <li><a href="coming_soon_slider.html">
                        <div>Coming Soon - Slider</div>
                        </a></li>
                      <li><a href="register.html">
                        <div>Register</div>
                        </a></li>
                      <li><a href="blank_page.html">
                        <div>Blank Page</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </li>
            <!-- Mega Menu
             ============================================= -->
            <li class="mega-menu"><a href="#">
              <div>Shortcodes</div>
              </a>
              <div class="mega-menu-content style-dropdown col-4 clearfix">
                <ul>
                  <li class="mega-menu-title">
                    <ul>
                      <li><a href="shortcodes_accordion.html">
                        <div>Accordion</div>
                        </a></li>
                      <li><a href="shortcodes_alert_message.html">
                        <div>Alert Message</div>
                        </a></li>
                      <li><a href="shortcodes_animation.html">
                        <div>Animation</div>
                        </a></li>
                      <li><a href="shortcodes_blockquote.html">
                        <div>Blockquote</div>
                        </a></li>
                      <li><a href="shortcodes_button.html">
                        <div>Buttons</div>
                        </a></li>
                      <li><a href="shortcodes_carousal.html">
                        <div>Carousal</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title">
                    <ul>
                      <li><a href="shortcodes_columns.html">
                        <div>Columns</div>
                        </a></li>
                      <li><a href="shortcodes_divider.html">
                        <div>Dividers</div>
                        </a></li>
                      <li><a href="shortcodes_maps.html">
                        <div>Google Map</div>
                        </a></li>
                      <li><a href="shortcodes_light_box.html">
                        <div>Lightbox</div>
                        </a></li>
                      <li><a href="shortcodes_list.html">
                        <div>List</div>
                        </a></li>
                      <li><a href="shortcodes_media.html">
                        <div>Media</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title">
                    <ul>
                      <li><a href="shortcodes_modal_box.html">
                        <div>Modal Box</div>
                        </a></li>
                      <li><a href="shortcodes_icons.html">
                        <div>Icons</div>
                        </a></li>
                      <li><a href="shortcodes_pagination.html">
                        <div>Pagination</div>
                        </a></li>
                      <li><a href="shortcodes_panels.html">
                        <div>Panels</div>
                        </a></li>
                      <li><a href="shortcodes_popovers.html">
                        <div>Popovers &amp; Tooltips</div>
                        </a></li>
                      <li><a href="shortcodes_progress_bar.html">
                        <div>Progress Bar</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
                <ul>
                  <li class="mega-menu-title">
                    <ul>
                      <li><a href="shortcodes_pricing.html">
                        <div>Pricing Tables </div>
                        </a></li>
                      <li><a href="shortcodes_social.html">
                        <div>Social Icons</div>
                        </a></li>
                      <li><a href="shortcodes_sections.html">
                        <div>Sections</div>
                        </a></li>
                      <li><a href="shortcodes_tabs.html">
                        <div>Tabs</div>
                        </a></li>
                      <li><a href="shortcodes_tables.html">
                        <div>Tables</div>
                        </a></li>
                      <li><a href="shortcodes_typography.html">
                        <div>Typography</div>
                        </a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </li>
            <li><a href="#">
              <div>Shop</div>
              </a>
              <ul class="menu-pos-invert">
                <li><a href="shop_carts.html">
                  <div>Carts</div>
                  </a></li>
                <li><a href="shop_wishlist.html">
                  <div>Wishlist</div>
                  </a></li>
                <li><a href="shop_checkout.html">
                  <div>Checkout</div>
                  </a></li>
                <li><a href="shop_myaccount.html">
                  <div>My Account</div>
                  </a></li>
              </ul>
            </li>
          </ul>
          <!-- Top Cart
                        ============================================= -->
          <div id="shop_cart" > <a href="#" id="shop_tigger"><i class="fa fa-shopping-cart"></i><span>3</span></a>
            <div class="shop_cart_content">
              <h4>Shopping Cart</h4>
              <div class="cart_items">
                <div class="item clearfix"> <a href="#"><img src="img/post_thumb.jpg" alt=""></a>
                  <div class="item_desc"> <a href="menu_single.html">Food Name</a> <span class="item_price">$12.89</span> <span class="item_quantity">x 2</span> </div>
                </div>
                <!-- End item -->
                <div class="item clearfix"> <a href="#"><img src="img/post_thumb2.jpg" alt=""></a>
                  <div class="item_desc"> <a href="menu_single.html">Food Name</a> <span class="item_price">$30.00</span> <span class="item_quantity">x 2</span> </div>
                </div>
                <!-- End item -->
                <div class="item clearfix"> <a href="#"><img src="img/post_thumb3.jpg" alt=""></a>
                  <div class="item_desc"> <a href="menu_single.html">Food Name</a> <span class="item_price">$21.99</span> <span class="item_quantity">x 4</span> </div>
                </div>
                <!-- End item -->
                <div class="shop_action clearfix"> <span class="shop_checkout_price">$150.99</span>
                  <button class="btn btn-dark">View Cart</button>
                </div>
              </div>
              <!-- End cart items -->
            </div>
            <!-- End shop cart content -->
          </div>
          <!-- End shop cart -->
        </nav>
        <!-- #main-menu end -->
      </div>
    </div>
  </header>--%>
    <!-- End header -->
    <!-- Content
    ============================================= -->
    <div id="content">
        <!-- Menu Grid
    ============================================= -->
        <div class="menu_tabs text-center">
            <!-- Menu Bar -->
            <div class="menu-bar dark">
                <!-- menu Filter
                    ============================================= -->
                <ul id="menu-scroll">
                    <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource7">
                        <ItemTemplate>
                    <li><a href='menu.aspx?cid=<%#Eval ("cid") %>'><%#Eval ("cname") %></a></li>
                            </ItemTemplate>
                    </asp:Repeater>
                   

                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                   

                </ul>
                <!-- #menu-filter end -->
            </div>
            <!-- End menu bar -->
            <!-- Menu Items - Break Fast
      ============================================= -->
            
            <section data-scroll-index="0">
                <div class="food-banner dark">
                    <div id="menu-parallax">
                        <%-- <div class="bcg background43">--%>
                        <div class="bg-transparent">
                            <div class="banner-content">
                                <div class="container">
                                    <i class="icon-breakfast"></i>
                                    <h1>Our Menus</h1>
                                    <span class="welcome">Please Click on above Category to explore Our Menu</span>
                                </div>
                            </div>
                            <!-- End Banner content -->
                            <%-- </div>--%>
                            <!-- End bg trnsparent -->
                        </div>
                    </div>
                    <!-- Service parallax -->
                </div>
                <div class="container padding-t-40">
                    <!-- Menu Items  Content -->
                    <!-- Menu Item -->
                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                    <article class="menu-item-list col-md-6 col-sm-12">
                        <div class="item-img">
                            <div class="overlay_content">
                                <!-- Overlay Item -->
                                <div class="overlay_item">
                                    <img src='../product/<%#Eval("pimage") %>' alt="">
                                    <!-- Overlay -->
                                    <div class="overlay">
                                        <!-- Icons -->
                                        <div class="icons">
                                            <!-- Buttons -->
                                            <div class="button"><a href='../product/<%#Eval("pimage") %>' rel="lightbox"><i class="fa fa-expand"></i></a><a href='add_to_cart.aspx?pid=<%#Eval("pid") %>'><i class="fa fa-shopping-cart"></i></a></div>
                                            <!-- End Buttons -->
                                            <a class="close-overlay hidden">x</a>
                                        </div>
                                        <!-- End Icons -->
                                    </div>
                                    <!-- End Overlay -->
                                </div>
                                <!-- End Overlay Item -->
                            </div>
                        </div>
                        <h3><%#Eval ("pname") %>  <span class="price"><%#Eval ("pprice") %>/-</span></h3>
                        <p><%#Eval ("pdesc") %></p>
                        
                    </article>
                            </ItemTemplate>
                        </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT pid, cid, pname, pimage, pdesc, pprice FROM product where cid=@cid">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="cid" QueryStringField="cid" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                
                </div>
            </section>

        </div>
        </div>
        <!-- End Menu Grid -->
   
    <!-- end of #content -->
    <!-- Footer
      ============================================= -->

    </form>

</asp:Content>
