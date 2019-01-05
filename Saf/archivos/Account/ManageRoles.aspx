<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Roles_ManageRoles" Title="" CodeBehind="ManageRoles.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <%--<div class="page-header">
        <h4 style="font-weight: bold"><i class="fa fa-users"></i> Administrar Roles</h4>
    </div>--%>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Administrar Roles</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                          
                            <div class="col-lg-12">
    <p>
        <b>Crear un Nuevo Rol: </b>

        <asp:TextBox ID="RoleName" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RoleNameReqField" runat="server"
            ControlToValidate="RoleName" Display="Dynamic"
            ErrorMessage="You must enter a role name."></asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="CreateRoleButton" CssClass="btn btn-primary" runat="server" Text="Crear Rol"
            OnClick="CreateRoleButton_Click" />
        <asp:Button ID="Button1" OnClientClick="javascript:history.back(1)" CssClass="btn btn-primary" runat="server" Text="Volver Atrás" />
    </p>
    <p>
        <asp:GridView ID="RoleList" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False"
            OnRowDeleting="RoleList_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:CommandField DeleteText="Eliminar Rol"  ControlStyle-CssClass="label label-danger" ControlStyle-ForeColor="White" ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Roles">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#dddddd" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
                                </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>

