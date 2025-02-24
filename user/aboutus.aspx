<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
<!-- Loader
    ============================================= -->
<div id="loader">
  <div class="loader-item"> <img src="../logo/white.png" height="300" width="300" alt="">
    <div class="spinner">
      <div class="bounce1"></div>
      <div class="bounce2"></div>
      <div class="bounce3"></div>
    </div>
  </div>
</div>
<!-- End loader -->
<!-- Document Wrapper
    ============================================= -->
<div id="wrapper">
  <!-- banner 
    ============================================= -->
  <section class="banner about dark" >
    <div id="service-parallax">
      <div class="bcg background1"
                data-center="background-position: 50% 0px;"
                data-bottom-top="background-position: 50% 100px;"
                data-top-bottom="background-position: 50% -100px;"
                data-anchor-target="#service-parallax"
              >
        <div class="bg-transparent">
          <div class="banner-content">
            <div class="container" >
              <div class="slider-content"> <i class="icon-home-ico"></i>
                <h1>About us</h1>
                <p>Where we all strart.</p>
                <ol class="breadcrumb">
                  <li><a href="Uhome.aspx">Home</a></li>
                  <li>About Us</li>
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

  <!-- End header -->
  <div id="content">
    <!-- Intro  
    ============================================= -->
    <section id="intro01" class="padding-100 intro2_01">
      <div class="container">
        <div class="row">
          <div class="col-md-6"> <img class="img-responsive" src="img/home2/art.jpg" alt=""> </div>
          <div class="col-md-5 text-center intro_message mt40"> 
            <!-- Head Title -->
            <div class="head_title">
            	<i class="icon-intro"></i>
                <h1>ART OF FOOD</h1>
                <span class="welcome">Welcome to Majesty</span>
            </div>
            <!-- End# Head Title -->
            <p>The Bungalow Cafe is the favourite hangout for coffee and conversations. Popularly known as TBC, we strive to provide the best experience to our guests.TBC to the youth is a “hangout” spot where they meet people, make conversations, and have a whole lot of fun over steaming with great Food.</p>
          </div>
          <!-- End intro center -->
        </div>
      </div>
    </section>
    <!-- End intro -->
    <!-- Chef Message
    ============================================= -->
    <section id="slide2-01" class="chef-message dark text-center" >
      <div class="bcg"
        data-center="background-position: 50% 0px;"
        data-bottom-top="background-position: 50% 100px;"
        data-top-bottom="background-position: 50% -100px;"
        data-anchor-target="#slide2-01"
        style="background-image:url('img/background/message-bg.jpg');"
    >
        <div class="bg-transparent padding-100">
          <div class="container">
            <div class="row">
              <div class="col-md-7">
                <h1 >Chef Message</h1>
                <p>We aim to home-produce as much as possiblefor the best quality, and to reduce food miles.  Our delicious Pizza , Shakes, Pasta, Moktails, Coffee and accompaniments are produced in our own kitchens – and we use herbs from our gardens when in season.  Even our bottled water is produced in-house, using a sophisticated seven-stage filtration.</p>
                <h2 class="signature">Micheal</h2>
              </div>
              <img src="img/home2/chef.png" alt=""> </div>
          </div>
        </div>
        <!-- en of bg transparent -->
      </div>
    </section>
    <!-- End chef message -->
    <!-- Our Team 
    ============================================= -->
    <section class="our_team text-center padding-100">
      <div class="container">
        <div class="row"> 
         <!-- Head Title -->
        	<div class="head_title">
               <i class="icon-intro"></i>
              <h1>Our Chefs</h1>
              <span class="welcome ">The Friendlist Professional Chef</span>
            </div>
            <!-- End# Head Title -->
          <div id="our_team_carousel" class="owl-carousel owl-theme">
           
            <!-- End item -->
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
            <div class="item">
              <div class="overlay_content clearfix">
                <div class="overlay_item"> <a><img src='../chef/<%#Eval ("cimage") %>' alt=""></a>
                   <div class="overlay">
              <p> <%#Eval ("cdesc")  %></p>
              </div>
                  <div class="desc">
                    <h2><a><%#Eval ("cname") %></a></h2>
                    <p><%#Eval ("cpost") %></p>
                  </div>
                </div>
              </div>
            </div>
                      </ItemTemplate>
                  </asp:Repeater>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [team]"></asp:SqlDataSource>

            <!-- End item -->
            
            <!-- End item -->
          </div>
          <!-- End our team slide -->
        </div>
      </div>
    </section>
    <!-- End our team -->
    <!-- Extra 
    ============================================= -->
    <section class="extra_touch black-bg dark padding-100 text-center">
      <div class="container">
        <div class="row">
          <h2>Come & <span>Experiences</span> our best of world class cuisine</h2>
          <a href="reservation.aspx" class="btn btn-gold white">BOOK YOUR TABLE</a> </div>
      </div>
    </section>
    <!-- End extra touch -->
    <!-- Our Mission 
    ============================================= -->
    <section class="our_mession padding-100 text-center">
      <div class="container">
        <div class="row"> 
          <!-- Head Title -->
          	<div class="head_title">
          	  <i class="icon-intro"></i>
              <h1>OUR MISSION</h1>
              <span class="welcome ">Goals & Vision</span>
          	</div>
          <!-- End # Head Title -->
          <div class="clearfix"></div>
          <div class="mission-wrapper">
            <div class="col-md-5 mission-slide">
              <div id="mission-slider" class="owl-carousel mission-slider">
                <div class="item"><img src="img/slide1.jpg" alt=""></div>
                <div class="item"><img src="img/slide2.jpg" alt=""></div>
                <div class="item"><img src="img/slide3.jpg" alt=""></div>
              </div>
            </div>
            <!-- End mission slider -->
            <div class="col-md-7 text-left darkgray mission-content">
             <p><li>Maintain a high standard of food quality and service.</li></p>
              <p><li>Provide first-rate live entertainment without a cover charge.</li></p>
                  <p><li>Ensure a friendly comfortable atmosphere.</li></p>
                 <p><li>Place monthly ads in neighborhood publications.</li></p>
                  <p><li>Distribute monthly fliers to neighborhood, businesses and churches.</li></p>
                  <p><li>Offer discount coupons.</li></p>
                  <p><li>Maintain and use a customer mailing list.</li></p>

             
            </div>
            <!-- End mission content -->
          </div>
        </div>
        <!--ends mission-wrapper -->
      </div>
    </section>
    <!-- End  Our Mission  -->
  </div>
  <!-- End #content -->
  <!-- Footer
    ============================================= -->
 
    </div>

 
    </form>
</asp:Content>
