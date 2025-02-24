<%@ Page Title="" Language="C#" MasterPageFile="~/user/umaster.Master" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="The_Bunglow_Cafe.user.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section class="banner dark">
            <div id="cart-parallax">
                <div class="bcg background39"
                    data-center="background-position: 50% 0px;"
                    data-bottom-top="background-position: 50% 100px;"
                    data-top-bottom="background-position: 50% -100px;"
                    data-anchor-target="#cart-parallax">
                    <div class="bg-transparent">
                        <div class="banner-content">
                            <div class="container">
                                <div class="slider-content  ">
                                    <i class="icon-home-ico"></i>
                                    <h1>Cart</h1>
                                    <p>Shop With Us</p>
                                    <ol class="breadcrumb">
                                        <li><a href="Uhome.aspx">Home</a></li>
                                        <li>Cart</li>
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
        <div id="content">
            <!-- Carts
    ============================================= -->
            <section class="carts text-center padding-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Table carts -->
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                                <HeaderTemplate>
                                    <table class="table table-striped table-responsive table-cart">
                                        <thead>
                                            <tr>
                                                <th style="width: 40%">Product Image</th>
                                                <th style="width: 15%">Price</th>
                                                <th style="width: 20%">Quantity</th>
                                                <th style="width: 25%">Total</th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td><a>
                                                <img src="../product/<%#Eval ("pimage") %>" alt="">
                                                <%#Eval ("pname") %></a> &nbsp;&nbsp;&nbsp;</td>
                                            <td><%#Eval ("price") %></td>
                                            <td>
                                                <!-- input group minus & plus-->

                                                <a href='decrement.aspx?cart_id=<%#Eval ("cart_id") %>'>- </a>

                                                <%-- <input type="number" name="quant[1]" class="form-control input-number" value="1" min="1" max="10">--%>
                                                <span class="total"><%#Eval ("qty") %></span>
                                                <a href='increment.aspx?cart_id=<%#Eval ("cart_id") %>'>+ </a>

                                                <!-- End input group minus & plus -->
                                            </td>
                                            <td><span class="total"><%#Eval ("total_amt") %></span> <a class="pull-right" href="delete_cart.aspx?cid=<%#Eval ("cart_id") %>"><i class="fa fa-times"></i></a></td>
                                        </tr>

                                    </tbody>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [add_to_cart] WHERE ([uid] = @uid)">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="uid" Name="uid" Type="Int32"></asp:SessionParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!-- End Table carts  -->
                        </div>
                        <!-- Carts content -->
                        <div class="col-md-12 carts-content">
                            <div class="row">
                                <!-- Left side -->
                                <div class="col-md-5 left-side">
                                    <%--  <form class="form-inline">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Cupon Code">
                  </div>
                  <button type="submit" class="btn btn-black">Apply</button>
                </form>--%>
                                    <!-- Carts total -->
                                    <div class="carts-total text-left margin-tb-60">
                                        <h3>Carts Total</h3>                                  
                                            <table class="table table-bordered">
                                            <tbody>

                                                <tr>
                                                    <td>Order Total</td>
                                                    <td>
                                                        <asp:Label ID="Lbltotal" runat="server" Text=""></asp:Label></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- Carts total -->

                                </div>
                                <div class="form-group ">
                                    <asp:Label ID="lblcart" class="btn-warning " runat="server" Font-Size="X-Large"></asp:Label>

                                </div>
                                <!-- End Left side -->
                                <!-- Right side -->
                                <div class="col-md-5 col-md-offset-2 right-side">
                                    <div class="form-group text-right checkout">
                                        <%--<button type="submit" class="btn  btn-black">UPDATE</button>--%>
                                        <%--<asp:Button ID="Button1" runat="server" Text="UPDATE" class="btn  btn-black" />--%>
                                        <%--<button type="submit" class="btn  btn-black">PROCEED TO CHECKOUT</button>--%>
                                        <asp:Button ID="Button2" runat="server" Text="PROCEED TO CHECKOUT" class="btn  btn-black" OnClick="Button2_Click" />
                                    </div>
                                    <!-- Carts total -->
                                    <%-- <div class="calc-shipping margin-tb-60">
                  <h3>Calculate Shipping</h3>
                  <div class="form-group">
                    <!-- Selct wrap -->
                    <div class="select_wrap">
                      <select class="form-control">
                        <option value="one">Select Your Country</option>
                        <option value="one">One</option>
                        <option value="two">Two</option>
                        <option value="three">Three</option>
                        <option value="four">Four</option>
                        <option value="five">Five</option>
                      </select>
                    </div>
                    <!-- End select wrap -->
                    <input type="text" class="form-control" placeholder="State">
                    <input type="text" class="form-control" placeholder="Postal Code">
                    <button type="submit" class="btn form-control btn-black">UPDATE TOTAL</button>
                  </div>
                </div>--%>
                                    <!-- Carts total -->
                                </div>
                                <!--End Right side -->
                            </div>
                        </div>
                        <!--End Carts content -->
                    </div>
                </div>
            </section>
            <!-- End Carts -->
        </div>
    </form>
</asp:Content>
