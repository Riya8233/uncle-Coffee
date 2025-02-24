<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="viewreservation.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <div class="card-header"><i class="fa fa-table"></i>Reservation</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>user id</th>
                                                <th>user Name</th>
                                                <th>User Email</th>
                                                <th>user Contact number</th>
                                                <th>Total Person</th>
                                                <th>Date</th>

                                                

                                               

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("rid") %></td>
                                    <td><%#Eval("name") %></td>
                                    
                                    <td><%#Eval("email") %></td>
                                    <td><%#Eval("mobile") %></td>
                                    <td><%#Eval("person") %></td>
                                    <td><%#Eval("date") %></td>
                                    
                                </tr>

                            </tbody>
                        </ItemTemplate>
                        <FooterTemplate>

                            <tfoot>
                                <tr>
                                </tr>
                            </tfoot>
                            </table>
            </div>
            </div>
                        </FooterTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [reservation]"></asp:SqlDataSource>









                </div>
            </div>
        </div>
    </form>
</asp:Content>
