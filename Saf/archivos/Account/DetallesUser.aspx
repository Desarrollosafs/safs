<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetallesUser.aspx.cs" Inherits="Seguridad.Account.DetallesUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%-- <div class="container">--%>
           <%--<div class="page-header">

            <h3 style="font-weight: bold"><i class="fa fa-users" aria-hidden="true"></i> Perfil de Usuario</h3>
         
        </div>--%>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Perfil de Usuario</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                            <div class="col-lg-12">
        <div class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Text_entrada" class="col-md-4 control-label">User ID</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxUseId" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Aplication ID</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxAplicacionID" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Email</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxEmail" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Pregunta Secreta</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxPregunta" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Repuesta</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxRepuesta" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="dropDownListEmpresa" class="col-md-4 control-label">Empresa</label>
                        <div class="col-md-8">
                            <div class="side-by-side clearfix">
                                <asp:DropDownList runat="server" class="chzn-select form-control" Enabled="true" AutoPostBack="true" ID="dropDownListEmpresa"></asp:DropDownList>
                                <script type="text/javascript"> $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({ allow_single_deselect: true }); </script>
                            </div>

                        </div>
                    </div>
                </div>
               
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Bloqueado?</label>
                        <div class="col-md-8">
                            <asp:CheckBox ID="CheckBoxUserLock" CssClass="checkbox checkbox-warning" Text="?" runat="server" />

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-6">
                    <div class="form-group">
                        <label for="Txtiddocumento" class="col-md-4 control-label">Autorizado</label>
                        <div class="col-md-8">
                            <asp:CheckBox ID="Check_ACTIVO" CssClass="checkbox checkbox-warning" Text="?" runat="server" />

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">
                      
                        <div class="col-md-12">
                            <asp:Label ID="Lbl_anuncio" runat="server" CssClass="label label-success" Style="font-size: medium"></asp:Label>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">
                      
                        <div class="col-md-12">
                            <asp:Label ID="Label_error" runat="server" CssClass="label label-danger" Style="font-size: medium"></asp:Label>

                        </div>
                    </div>
                </div>


                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">
                        <div class="col-md-12">
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Actualizar Usuario" OnClick="Button2_Click" />
                          <asp:Button ID="Button1" OnClientClick="javascript:history.back(1)" CssClass="btn btn-primary" runat="server" Text="Volver Atrás" />
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
