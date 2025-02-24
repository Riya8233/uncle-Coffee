<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Shipping Address -->
    <div id="content">
        <section class="myaccount text-left padding-100">
            <div class="container">
                <div class="row">
                    <form runat="server">
                        <div class="col-md-12">

                            <div class="calc-shipping">
                                <h3>Payment Details</h3>
                                <div class="form-group">
                                    <!-- Selct wrap -->
                                    <div class="select_wrap dark_slect">
                                        <%--  <select class="form-control">
                                    <option value="">Select Delivery Method</option>
                                    <option value="one">One</option>
                                    <option value="two">Two</option>
                                    <option value="three">Three</option>
                                    <option value="four">Four</option>
                                    <option value="five">Five</option>
                                </select>--%>
                                    </div>
                                    <!-- End select wrap -->
                                    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                                    <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Enter Mobile"></asp:TextBox>
                                    <asp:TextBox ID="txttotal" runat="server" class="form-control" placeholder="Enter Amount"></asp:TextBox>
                                    <%--  <input type="text" class="form-control" placeholder="First Name*">
                            <input type="text" class="form-control" placeholder="Last Name*">
                            <input type="text" class="form-control" placeholder="Address*">
                            <input type="text" class="form-control" placeholder="City*">
                            <input type="text" class="form-control" placeholder="Postal Code"--%>
                                </div>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Order Now" class="btn form-control btn-black" OnClick="Button1_Click" />
                            <%--<button type="submit" class="btn form-control btn-black">Order Now</button>--%>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
