<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispcategory.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
               


         <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
             <HeaderTemplate>
                        <div class="card-header"><i class="fa fa-table"></i>Data Exporting</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="example" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Category id</th>
                                            <th>Category Name</th>
                                           
                                            
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
                                

                                <td><a href='Editcategory.aspx?cid=<%#Eval("cid") %>'>EDIT</a></td>
                                <td><a href='delcategory.aspx?cid=<%#Eval("cid") %>'>DELETE</a></td>
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

                


                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>

                


            </div>
        </div>
    </div>
    </form>
</asp:Content>
