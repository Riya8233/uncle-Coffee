<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="ChechOut.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <section class="banner dark">
            <div id="contact-parallax">
                <div class="bcg background9"
                    data-center="background-position: 50% 0px;"
                    data-bottom-top="background-position: 50% 100px;"
                    data-top-bottom="background-position: 50% -100px;"
                    data-anchor-target="#contact-parallax">
                    <div class="bg-transparent">
                        <div class="banner-content">
                            <div class="container">
                                <div class="slider-content  ">

                                    <i class="icon-home-ico"></i>
                                    <h1>Payment</h1>
                                    <p>Click On Below Button To Proceed Your Payment</p>
                                     <form action="PayCallBack.aspx" method="POST">
                                            <script class="razor"
                                                src="https://checkout.razorpay.com/v1/checkout.js"
                                                data-key="rzp_test_eU2KoH9vbiAKAU"
                                                data-currency="INR"
                                                data-buttontext="Pay with Razorpay"
                                                data-name="The Bungalow Cafe"
                                                data-image="https://razorpay.com/favicon.png"
                                                data-prefill.name="name"
                                                data-prefill.email="email"
                                                data-theme.color="#F37254"></script>
                                            <%--         <input type="hidden" custom="Hidden Element" name="hidden">--%>
                                        </form>
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

        
                                       
                                   

</asp:Content>
