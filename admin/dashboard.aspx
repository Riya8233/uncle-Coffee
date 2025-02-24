<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="row mt-3">
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-deepblue">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblcat" runat="server" Text="Label"></asp:Label>
                            <span class="float-right"><i class="fa fa-shopping-cart"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Categories <span class="float-right"></span></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-orange">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblprod" runat="server" Text="Label"></asp:Label>
                            <span class="float-right"><i class="fa fa-usd"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Products <span class="float-right"></span></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-ohhappiness">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblcart" runat="server" Text="Label"></asp:Label><span class="float-right"><i class="fa fa-eye"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Orders <span class="float-right"></span></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-ibiza">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblblog" runat="server" Text="Label"></asp:Label><span class="float-right"><i class="fa fa-envira"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Blogs <span class="float-right"></span></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-ibiza">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblpayment" runat="server" Text="Label"></asp:Label><span class="float-right"><i class="fa fa-envira"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Payment <span class="float-right"></span></p>
                    </div>
                </div>
            </div>
           

           <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-ohhappiness">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label><span class="float-right"><i class="fa fa-eye"></i></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Message <span class="float-right"></span></p>
                    </div>
                </div>
               </div>
               
                <div class="col-12 col-lg-6 col-xl-3">
                <div class="card gradient-orange">
                    <div class="card-body">
                        <h5 class="text-white mb-0">
                            <asp:Label ID="lbltest" runat="server" Text="Label"></asp:Label>
                            <span class="float-right"></span></h5>
                        <div class="progress my-3" style="height: 3px;">
                            <div class="progress-bar" style="width: 55%"></div>
                        </div>
                        <p class="mb-0 text-white small-font">Total Reviews <span class="float-right"></span></p>
                    </div>
                </div>
            </div>








        
            </div>
    </form>
</asp:Content>
