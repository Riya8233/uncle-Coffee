<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispblog.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm15" %>

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
                                                <th>Blog id</th>
                                                <th>Blog Name</th>
                                                <th>Blog Image</th>

                                                <th>Blog description</th>
                                                <th>Blog date</th>

                                                <th>EDIT</th>
                                                <th>DELETE</th>

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("blogid") %></td>
                                    <td><%#Eval("bname") %></td>
                                    <td>
                                        <img src='../blog/<%#Eval("bimage")%>' width="100" height="100" /></td>
                                    <td><%#Eval("bdesc") %></td>
                                    <td><%#Eval("bdate") %></td>
                                    <td><a href='editblog.aspx?blogid=<%#Eval("blogid") %>'>EDIT</a></td>
                                    <td><a href='delblog.aspx?blogid=<%#Eval("blogid") %>'>DELETE</a></td>
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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [blog]"></asp:SqlDataSource>









                </div>
            </div>
        </div>
    </form>

</asp:Content>
