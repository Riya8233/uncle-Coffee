<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="team.aspx.cs" Inherits="The_Bunglow_Cafe.admin.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row pt-2 pb-2">
        <div class="col-sm-9">
            <h4 class="page-title">Team</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javaScript:void();">Team</a></li>
                <li class="breadcrumb-item"><a href="javaScript:void();">insert</a></li>

            </ol>
        </div>
        <div class="col-sm-3">
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
        </div>
    </div>


    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <div class="card-title">Team Form</div>
                    <hr>
                    <form runat="server">
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Team Id</label>
                            <div class="col-sm-10">
                                
                                <asp:TextBox ID="txtid" runat="server" class="form-control" placeholder="Enter Team Id"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Chef Name</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-22" placeholder="Enter Cat Name">--%>
                                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Chef Name "></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-22" class="col-sm-2 col-form-label">Chef Post</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-22" placeholder="Enter Cat Name">--%>
                                <asp:TextBox ID="txtpost" runat="server" class="form-control" placeholder="Enter Post "></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="input-23" class="col-sm-2 col-form-label">Chef Image</label>
                            <div class="col-sm-10">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Image ID="Image1" runat="server" src='chef /<%#Eval("cimage") %>' Height="143" Width="144" />
                                <%--<input type="text" class="form-control" id="input-23" placeholder="Enter Category Description  ">--%>
                                <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Category Description  "></asp:TextBox>--%>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="input-23" class="col-sm-2 col-form-label">Chef Description</label>
                            <div class="col-sm-10">
                                <%--<input type="text" class="form-control" id="input-23" placeholder="Enter Category Description  ">--%>
                                <asp:TextBox ID="txtchefdesc" runat="server" class="form-control" placeholder="Chef Description "></asp:TextBox>
                            </div>
                        </div>



                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label"></label>
                            <div class="col-sm-10">
                                <%--<button type="submit" class="btn btn-primary px-5"><i class="icon-lock"></i> Register</button>--%>
                                <asp:Button ID="Button1" class="btn btn-primary px-5" runat="server" Text="Insert" OnClick="Button1_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                            </div>

                        </div>
                        <div>
                        </div>

                    </form>
                </div>
            </div>
            &nbsp;
        </div>
    </div>

</asp:Content>
