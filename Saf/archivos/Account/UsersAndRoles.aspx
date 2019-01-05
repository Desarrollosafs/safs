<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Roles_UsersAndRoles" Title="" Codebehind="UsersAndRoles.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <%--<div class="page-header">
        <h4 style="font-weight: bold"><i class="fa fa-users"></i> Administrar Roles por Usuarios</h4>
    </div>--%>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Administrar Roles por Usuarios</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                            <div class="col-lg-12">
    <div class="form-horizontal" role="form">

        <div class="row">
            <div class="col-sm-8 col-lg-8">
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="dropDownAeropuertoProcedencia"> Seleccione un Usuario</label>
                    <div class="col-sm-5">
                        <asp:DropDownList ID="UserList" CssClass="form-control text-uppercase" runat="server" AutoPostBack="True"
                            DataTextField="UserName" DataValueField="UserName"
                            OnSelectedIndexChanged="UserList_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="col-sm-8 col-lg-12">
                <div class="form-group">
                   
                    <div class="col-sm-12">
                        <asp:Repeater ID="UsersRoleList" runat="server" >
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="RoleCheckBox" CssClass="checkbox checkbox-warning"  AutoPostBack="true" Text='<%# Container.DataItem %>' OnCheckedChanged="RoleCheckBox_CheckChanged"  />
                                </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <div class="page-header">
        <h4 style="font-weight: bold"><i class="fa fa-users"></i> Administrar Usuario por Roles</h4>
    </div>

    <div class="form-horizontal" role="form">

        <div class="row">
            <div class="col-sm-8 col-lg-8">
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="dropDownAeropuertoDestino">Seleccione un Rol:</label>
                    <div class="col-sm-5">
                        <asp:DropDownList ID="RoleList" CssClass="form-control" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="RoleList_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
      

        <div class="col-sm-8 col-lg-12">
            <div class="form-group">
             
                <div class="col-sm-12">
                    <asp:GridView ID="RolesUserList" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False"
                        EmptyDataText="No users belong to this role."
                        OnRowDeleting="RolesUserList_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <Columns>
                            <asp:CommandField DeleteText="Remover" ControlStyle-ForeColor="White" ShowDeleteButton="True" ControlStyle-CssClass="label label-danger" />
                            <asp:TemplateField HeaderText="Users">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="UserNameLabel" Text='<%# Container.DataItem %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
      
        <div class="col-sm-8 col-lg-8">
            <div class="form-group">
                <label class="col-sm-3 control-label" for="dropDownAeropuertoProcedencia">Nombre de Usuario</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="UserNameToAddToRole" CssClass="form-control" runat="server"></asp:TextBox>
                    
                </div>
            </div>
        </div>
             <div class="col-sm-12 col-lg-12">
                <div class="form-group">
             
                    <div class="col-sm-12">
                       <asp:Label ID="ActionStatus" runat="server" CssClass="label label-danger" Font-Size="Large"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-lg-2">
                <div class="form-group">
               
                    <div class="col-sm-2">
                       <asp:Button ID="AddUserToRoleButton" CssClass="btn btn-primary" runat="server" Text="Agregar Usuario al Rol"
                        OnClick="AddUserToRoleButton_Click" />
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


