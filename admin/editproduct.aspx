<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row pt-2 pb-2">
        <div class="col-sm-9">
		    <h4 class="page-title">Product</h4>
		    <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javaScript:void();">Product</a></li>
            <li class="breadcrumb-item"><a href="javaScript:void();">Edit</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Form</li>
         </ol>
	   </div>
	   <div class="col-sm-3">
       <div class="btn-group float-sm-right">
        <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i> Setting</button>
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
     </div>
     </div>
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <div class="card-title">Edit Form</div>
                    <hr>
                    <form runat="server">
                        <div class="form-group row">
                            <label for="input-21" class="col-sm-2 col-form-label">Product Id</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-21" placeholder="Enter Your Name">--%>
                                <asp:TextBox ID="txtproduct_id" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-21" class="col-sm-2 col-form-label">Category Id</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-21" placeholder="Enter Your Name">--%>
                                <asp:TextBox ID="txtcid" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Product Name</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-22" placeholder="Enter Your Email Address">--%>

                                <asp:TextBox ID="txtproduct_name" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="input-23" class="col-sm-2 col-form-label">product Image</label>
                            <div class="col-sm-10">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Image ID="Image1" runat="server" src='../product /<%#Eval("serviceimg") %>' Height="143" Width="144" />
                                <%--<input type="text" class="form-control" id="input-23" placeholder="Enter Category Description  ">--%>
                                <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Category Description  "></asp:TextBox>--%>
                            </div>
                             </div>
                        <div class="form-group row">
                            <label for="input-23" class="col-sm-2 col-form-label">Product Desc</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-23" placeholder="Enter Your Mobile Number">--%>
                                <asp:TextBox ID="txtproduct_desc" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                             <div class="form-group row">
                            <label for="input-23" class="col-sm-2 col-form-label">Product Price</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-23" placeholder="Enter Your Mobile Number">--%>
                                <asp:TextBox ID="txtprice" runat="server" class="form-control" placeholder="Enter Product price"></asp:TextBox>
                            </div>
                        </div>
                        


                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label"></label>
                            <div class="col-sm-10">
                                <%--<button type="submit" class="btn btn-primary px-5"><i class="icon-lock"></i> Register</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary px-5" OnClick="Button1_Click1" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
