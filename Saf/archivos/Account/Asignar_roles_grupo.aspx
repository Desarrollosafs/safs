<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Asignar_roles_grupo.aspx.cs" Inherits="archivos.Account.Asignar_roles_grupo_spv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="page-header">
            <h4 style="font-weight: bold;">Asignar roles por Grupo a Usuario</h4>
            <%--<hr class="divider" />--%>
        </div>
        <div class="alert alert-warning alert-dismissible fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Asignar Grupo.:</strong> Esta opción solo es para asignar roles a Usuario nuevo, si desea agregar un rol extra realícelo por el menú administrar roles.
  </div>
       
        <div class="form-horizontal" role="form">
              <asp:Label ID="Label_aviso_rol" CssClass="label label-danger " Font-Size="Large" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label_aviso_asignacion_activa" runat="server" CssClass="label label-danger" Font-Size="Large" Text=""></asp:Label>
            <div class="row">
                
                 <div class="col-sm-4 col-lg-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="txtVersion">Grupo</label>
                        <div class="col-md-8">
                            <div class="side-by-side clearfix">
                            <asp:DropDownList runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_grupo_SelectedIndexChanged" ID="DropDownList_grupo">
                                <asp:ListItem>Seleccione un Grupo</asp:ListItem>
                                <asp:ListItem Value="1">ADM</asp:ListItem>
                                <asp:ListItem Value="2">OPR</asp:ListItem>
                                <asp:ListItem Value="3">SPV</asp:ListItem>
                                </asp:DropDownList>
                           
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-sm-4 col-lg-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="txtVersion">Usuario</label>
                        <div class="col-md-8">
                            <div class="side-by-side clearfix">
                            <asp:DropDownList runat="server" CssClass="chzn-select form-control" Enabled="false"   ID="DropDownList_usuario"></asp:DropDownList>
                              <asp:Label ID="Label_EMPRESA_ACTIVA" Visible="false" runat="server"  ></asp:Label>
                            <script type="text/javascript"> $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({ allow_single_deselect: true }); </script>
                        </div>
                    </div>
                </div>
                </div>
                
                
                    <div class="col-sm-10 col-lg-12">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label runat="server" Font-Size="Large" ID="lblAviso" CssClass="label label-success"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-10 col-lg-12">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label runat="server" Font-Size="Large" ID="Lblerror" CssClass="label label-danger"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-lg-12">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="Button_registrar"  runat="server" OnClick="Button_registrar_Click"   CssClass="btn btn-primary" Text="Asignar Grupo"  />
                             <asp:Button ID="Button_nueva_asignacion"  runat="server" OnClick="Button_nueva_asignacion_Click"  CssClass="btn btn-primary " Text="Nueva Asignación"  />
                        </div>
                    </div>
                </div>
              

            </div>
        </div>
    </div>
</asp:Content>
