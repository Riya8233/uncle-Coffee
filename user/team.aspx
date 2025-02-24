<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <form id="form1" runat="server">
    

   

<!-- banner 
    ============================================= -->
<section class="banner about dark" >
<div id="service-parallax">
<div class="bcg background44"
                data-center="background-position: 50% 0px;"
                data-bottom-top="background-position: 50% 100px;"
                data-top-bottom="background-position: 50% -100px;"
                data-anchor-target="#service-parallax"
              >
<div class="bg-transparent">
<div class="banner-content">
<div class="container" >
<div class="slider-content  ">
<i class="icon-home-ico"></i>
<h1>Our team</h1>
<p>Every Thing You Know About The Bungalow Cafe</p>
<ol class="breadcrumb">
<li><a href="Uhome.aspx">Home</a></li>
<li>Team</li></ol>
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
  <!-- Our Team Inner
    ============================================= -->
  <section class="inner-team text-center padding-100">
    <div class="container">
      <div class="row">
          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src='../chef/<%#Eval ("cimage")  %>' height="1000" width="1000" alt="">
              <div class="overlay">
              <p> <%#Eval ("cdesc")  %></p>
              </div>
              <div class="desc">
                 <h2><a><%#Eval ("cname") %></a></h2>
                <p><%#Eval ("cpost")  %></p>
              </div>
            </div>
          </div>
        </div>
              </ItemTemplate>
              </asp:Repeater>

                
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [team]"></asp:SqlDataSource>

                
        <!-- End item -->
       <%-- <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <a href="team_single.html"><img src="img/team/2.jpg" alt=""></a>
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">Mark Henry</a></h2>
                <p>GRILL  CHEF</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <a href="team_single.html"><img src="img/team/3.jpg" alt=""></a>
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">Jhon Loe</a></h2>
                <p>FISH CHEF</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/4.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">SARAH DOE</a></h2>
                <p>Bakery Chef</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/5.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">MARK DOE</a></h2>
                <p>Cafe Chef</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/6.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">JHON SMITH</a></h2>
                <p>Pasta Chef</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/7.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">SARAH DOE</a></h2>
                <p>Bakery Chef</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/8.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">MARK DOE</a></h2>
                <p>Cafe Chef</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End item -->
        <div class="col-md-4 col-sm-6 item">
          <div class="overlay_content clearfix">
            <div class="overlay_item"> <img src="img/team/9.jpg" alt="">
              <div class="overlay">
                <div class="icons"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a class="close-overlay hidden">x</a> </div>
              </div>
              <div class="desc">
                <h2><a href="team_single.html">JHON SMITH</a></h2>
                <p>Pasta Chef</p>
              </div>
            </div>
          </div>
        </div>--%>
        <!-- End item -->
        <div class="clearfix"></div>
        <!-- Pagination -->
       <%-- <div class="col-md-12 mt40">
          <ul class="majesty_pagination">
            <li class="next"><a href="#">NEXT</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li class="previous"><a href="#">PREVIOUS</a></li>
          </ul>
        </div>--%>
        <!-- End Pagination -->
      </div>
    </div>
  </section>
</div>
<!-- end of #content -->
<!-- Footer
    ============================================= -->

    </form>
</asp:Content>
