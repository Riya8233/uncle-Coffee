<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispservice.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm21" %>

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
                                                <th>Service id</th>
                                                <th>Service Name</th>
                                                
                                                <th>Service Image</th>
                                                <th>Service description</th>

                                                <th>EDIT</th>
                                                <th>DELETE</th>

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("ser_id") %></td>
                                    <td><%#Eval("ser_name") %></td>
                                    
                                    <td>
                                        <img src='serviceimg/<%#Eval("ser_image")%>' width="100" height="100" />
                                    </td>
                                    <td><%#Eval("ser_desc") %></td>
                                    <td><a href='Editservice.aspx?cat_id=<%#Eval("ser_id") %>'>EDIT</a></td>
                                    <td><a href='delservice.aspx?tid=<%#Eval("ser_id") %>'>DELETE</a></td>
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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [service_mstr]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>



</asp:Content>

