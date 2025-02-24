<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="PayCallBack.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm17" %>

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
                                 <div class="blog-divider">

                    <div class="fa-ski-jump">
                        <h1 runat="server" id="h1Message"></h1>
                        <p runat="server" id="pTxnId"></p>
                        <p runat="server" id="pOrderId"></p>
                        <p>Click hear to go to website:</p>
                        <p><a class="btn btn-primary btn-lg" href="Uhome.aspx" role="button">Back</a></p>
                    </div>
                </div>


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
