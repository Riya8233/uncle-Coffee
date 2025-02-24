<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row pt-2 pb-2">
        <div class="col-sm-9">
            <h4 class="page-title">Category</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javaScript:void();">Category</a></li>
                <li class="breadcrumb-item"><a href="javaScript:void();">Form</a></li>

            </ol>
        </div>
      <%--  <div class="col-sm-3">
            <div class="btn-group float-sm-right">
                <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i>Setting</button>
                <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown">
                    <span class="caret"></span>
                </button>
                <div class="dropdown-menu">
                    <a href="javaScript:void();" class="dropdown-item">Action</a>
                    <a href="javaScript:void();" class="dropdown-item">Another action</a>
                    <a href="javaScript:void();" class="dropdown-item">Something else here</a>
                    <div class="dropdown-divider"></div>
                    <a href="javaScript:void();" class="dropdown-item">Separated link</a>
                </div>
            </div>
        </div>--%>
    </div>
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <div class="card-title">Category Form</div>
                    <hr>
                    <form runat="server">
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Category Id</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-22" placeholder="Enter Cat Name">--%>
                                <asp:TextBox ID="txtcat_id" runat="server" class="form-control" placeholder="Enter Category Id"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Category Name</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-22" placeholder="Enter Cat Name">--%>
                                <asp:TextBox ID="txtcat_name" runat="server" class="form-control" placeholder="Enter Category Name"></asp:TextBox>
                            </div>
                        </div>
                       

                      
                        <div>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                       
                    </form>
                </div>
            </div>
            &nbsp;
        </div>
    </div>
</asp:Content>
