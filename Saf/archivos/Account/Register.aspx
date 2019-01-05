<%@ Page Title="Registrar Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Seguridad.Account.Register" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4 style="color: #808080; margin-left: 30px"><%: Title %>.</h4>
                        <%--<h4><strong style="color: #808080; margin-left: 30px"> Agregar/Modificar Departamentos</strong></h4>--%>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                            <div class="col-lg-12">
                                <div class="form-horizontal" role="form">
                                    <div class="row">
                                        <hgroup class="title">

                                            <h4>Use el formulario siguiente para crear una cuenta nueva.</h4>
                                        </hgroup>

                                        <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser" ContinueDestinationPageUrl="~/Account/Register.aspx">
                                            <LayoutTemplate>
                                                <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
                                                <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
                                            </LayoutTemplate>
                                            <WizardSteps>
                                                <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                                                    <ContentTemplate>
                                                        <p class="message-info">
                                                            Es necesario que las contraseñas tengan al menos <%: Membership.MinRequiredPasswordLength %> caracteres.
                                                        </p>

                                                        <p class="validation-summary-errors">
                                                            <asp:Literal runat="server" ID="ErrorMessage" />
                                                        </p>

                                                        <fieldset>
                                                            <%-- <legend>Formulario de registro</legend>--%>
                                                            <div class="form-horizontal" role="form">
                                                                <div class="row">

                                                                    <div class="col-sm-8 col-lg-6">
                                                                        <div class="form-group">
                                                                            <asp:Label runat="server" CssClass="col-sm-8 control-label" AssociatedControlID="UserName"><i class="fa fa-user"></i> Nombre de usuario</asp:Label>
                                                                            <div class="col-sm-8">
                                                                                <asp:TextBox runat="server" CssClass="form-control" ID="UserName" />
                                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                                                                    CssClass="field-validation-error" ForeColor="Red" ErrorMessage="El campo de nombre de usuario es obligatorio." />
                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                    <div class="col-sm-8 col-lg-6">
                                                                        <div class="form-group">
                                                                            <asp:Label runat="server" CssClass="col-sm-8 control-label" AssociatedControlID="Email"><i class="fa fa-envelope"></i> Dirección de correo electrónico</asp:Label>
                                                                            <div class="col-sm-8">
                                                                                <asp:TextBox runat="server" CssClass="form-control" ID="Email" TextMode="Email" />
                                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                                                                    CssClass="field-validation-error" ForeColor="Red" ErrorMessage="El campo de dirección de correo es obligatorio." />
                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                    <div class="col-sm-8 col-lg-6">
                                                                        <div class="form-group">
                                                                            <asp:Label runat="server" CssClass="col-sm-8 control-label" AssociatedControlID="Password"><i class="fa fa-key"></i> Contraseña</asp:Label>
                                                                            <div class="col-sm-8">
                                                                                <asp:TextBox runat="server" CssClass="form-control" ID="Password" TextMode="Password" />
                                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                                                                    CssClass="field-validation-error" ForeColor="Red" ErrorMessage="El campo de contraseña es obligatorio." />
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-sm-8 col-lg-6">
                                                                        <div class="form-group">
                                                                            <asp:Label runat="server" CssClass="col-sm-8 control-label" AssociatedControlID="ConfirmPassword"><i class="fa fa-key"></i> Confirmar contraseña</asp:Label>
                                                                            <div class="col-sm-8">
                                                                                <asp:TextBox runat="server" CssClass="form-control" ID="ConfirmPassword" TextMode="Password" />
                                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                                                                    CssClass="field-validation-error" ForeColor="Red" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                                                                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                                                                    CssClass="field-validation-error" Display="Dynamic" ForeColor="Red" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </li>
                                                                </div>
                                                                <div class="col-sm-12 col-lg-12">
                                                                    <div class="form-group">
                                                                        <%--  <div class="col-sm-12">--%>
                                                                        <asp:Button runat="server" CssClass="btn btn-primary" CommandName="MoveNext" Text="Registrar Usuario" />
                                                                        <asp:Button ID="Button1" OnClientClick="javascript:history.back(1)" CssClass="btn btn-primary" runat="server" Text="Volver Atrás" />
                                                                        <%-- </div>--%>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </fieldset>
                                                    </ContentTemplate>
                                                    <CustomNavigationTemplate />
                                                </asp:CreateUserWizardStep>
                                            </WizardSteps>
                                        </asp:CreateUserWizard>
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
