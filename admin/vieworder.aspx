<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="vieworder.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <div class="card-header"><i class="fa fa-table"></i>Data Exporting</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>user id</th>
                                                <th>order Name</th>
                                                <th>order Image</th>
                                                <th>order price</th>

                                                

                                               

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("uid") %></td>
                                    <td><%#Eval("pname") %></td>
                                    <td>
                                        <img src='../product/<%#Eval("pimage")%>' width="100" height="100" /></td>
                                    <td><%#Eval("price") %></td>
                                    
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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [add_to_cart]"></asp:SqlDataSource>









                </div>
            </div>
        </div>
    </form>
</asp:Content>
