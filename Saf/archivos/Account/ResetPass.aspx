<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="Seguridad.Account.ResetPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="container">--%>
        <%-- <asp:Image ID="Image1" runat="server" Height="100px" style="float:right" Width="120px" />--%>
        <%--<div class="page-header">

            <h3 style="font-weight: bold"><i class="fa fa-key" aria-hidden="true"></i> Restablecer Contraseña</h3>
            
        </div>--%>
        <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Restablecer Contraseña</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                          
                            <div class="col-lg-12">
        <div class="form-horizontal" role="form">

            <div class="row">
                
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">USUARIO</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="UsernameTextBox" CssClass="form-control" Columns="30" runat="server" AutoPostBack="true" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">                       
                        <div class="col-md-8">
                            <asp:Button ID="ResetPasswordButton" Text="Reset Password"
                                OnClick="ResetPassword_OnClick" CssClass="btn btn-primary" runat="server" Enabled="false" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">

                        <div class="col-md-12">
                            <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server"
                                ControlToValidate="UsernameTextBox" ForeColor="red"
                                Display="Dynamic" ErrorMessage="El usuario es Requerido">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">                   
                        <div class="col-md-12">
                            <asp:Label ID="Msg" runat="server" ForeColor="maroon" Style="font-weight: 700" />
                        </div>
                    </div>
                </div>


            </div>
        </div>
   </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>






</asp:Content>
