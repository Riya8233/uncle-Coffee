<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispteam.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm11" %>

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
                                                <th>Chef id</th>
                                                <th>Chef Name</th>
                                                <th>Chef Post</th>
                                                <th>Chef Photo</th>
                                                <th>Category description</th>

                                                <th>EDIT</th>
                                                <th>DELETE</th>

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("cid") %></td>
                                    <td><%#Eval("cname") %></td>
                                    <td><%#Eval("cpost") %></td>
                                    <td><img src='../chef/<%#Eval("cimage")%>' width="100" height="100" /> </td>
                                    <td><%#Eval("cdesc") %></td>
                                    <td><a href='Editteam.aspx?cid=<%#Eval("cid") %>'>EDIT</a></td>
                                    <td><a href='delteam.aspx?cid=<%#Eval("cid") %>'>DELETE</a></td>
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






                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [team]"></asp:SqlDataSource>






                </div>
            </div>
        </div>
    </form>

</asp:Content>
