<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="Evaluacion.Account.ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%-- <div class=" container">--%>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                          <hgroup style="margin-left:10px">
                    <h4 style="color:#c39916">Cambiar contraseña para: <%=User.Identity.Name%></h4>
                </hgroup>
                        <%--<h4><strong style="color: #808080; margin-left: 30px"> Cambiar contraseña</strong></h4>--%>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                            <div class="col-lg-12">
        <div class="form-horizontal" role="form">
            <div class="row">

               <%-- <hgroup class="title">
                    <h4 style="color:#c39916">Cambiar contraseña para: <%=User.Identity.Name%></h4>
                </hgroup>--%>
                <div class="container">

                    <p class="message" style="margin-bottom: 30px;">

                        <asp:Label ID="Msg" ForeColor="maroon" runat="server" Style="font-size: large; font-weight: 700" />

                    </p>



                    <%-- <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="txtNombre" class="col-md-4 control-label">Nombre</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" required="required" MaxLength="50"></asp:TextBox>
                        </div>
                    </div>
                </div>--%>

                    <div class="col-sm-8 col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="OldPasswordTextbox" CssClass="col-md-4 control-label">Contraseña Anterior:</asp:Label>

                            <div class="col-md-8">
                                <asp:TextBox ID="OldPasswordTextbox" runat="server" TextMode="Password" CssClass="form-control" />

                                <asp:RequiredFieldValidator ID="OldPasswordRequiredValidator" runat="server"
                                    ControlToValidate="OldPasswordTextbox" ForeColor="red"
                                    Display="Static" ErrorMessage="Requerido" CssClass="text-danger" />
                            </div>
                        </div>

                    </div>

                    <div class="col-sm-8 col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="PasswordTextbox" CssClass="col-md-4 control-label">Contraseña nueva:</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server"
                                    ControlToValidate="PasswordTextbox" ForeColor="red"
                                    Display="Static" ErrorMessage="Campo es requerido" CssClass="text-danger" />
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8 col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="PasswordConfirmTextbox" CssClass="col-md-4 control-label">Confirme contraseña:</asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="PasswordConfirmTextbox" runat="server" TextMode="Password" CssClass="form-control" />

                                <asp:RequiredFieldValidator ID="PasswordConfirmRequiredValidator" runat="server"
                                    ControlToValidate="PasswordConfirmTextbox" ForeColor="red"
                                    Display="Static" ErrorMessage="Campo es requerido" CssClass="text-danger" />
                                <asp:CompareValidator ID="PasswordConfirmCompareValidator" runat="server"
                                    ControlToValidate="PasswordConfirmTextbox" ForeColor="red"
                                    Display="Static" ControlToCompare="PasswordTextBox"
                                    ErrorMessage="Por favor confirmar, contraseñas no coinciden." CssClass="text-danger" />
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8 col-lg-12">
                        <div class="form-group">
                            <div class="col-md-10">
                                <asp:Button ID="ChangePasswordButton" Text="Cambiar contraseña"
                                    OnClick="ChangePassword_OnClick" runat="server" CssClass="btn btn-primary" Style="width: 200px;" />
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


            </div>
        
</asp:Content>
