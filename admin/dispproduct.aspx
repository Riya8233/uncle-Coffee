<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispproduct.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm6" %>
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
                                                <th>Product id</th>
                                                <th>Category id</th>
                                                <th>Product Name</th>
                                                <th>Product description</th>
                                                <th>Product Price</th>
                                                <th>Product Image</th> 
                                                

                                                <th>EDIT</th>
                                                <th>DELETE</th>

                                            </tr>
                                        </thead>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("pid") %></td>
                                    <td><%#Eval("cid") %></td>
                                    <td><%#Eval("pname") %></td>
                                    <td><%#Eval("pdesc") %></td>
                                    <td> <img src='../product/<%#Eval("pimage")%>' width="100" height="100" /></td>
                                       <td><%#Eval("pprice") %></td>
                                  
                                   
                                    <td><a href='editproduct.aspx?pid=<%#Eval("pid") %>'>EDIT</a></td>
                                    <td><a href='delproduct.aspx?pid=<%#Eval("pid") %>'>DELETE</a></td>
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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

  </div>
            </div>
        </div>
    </form>
</asp:Content>
