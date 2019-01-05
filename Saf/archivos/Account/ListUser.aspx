<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListUser.aspx.cs" Inherits="Seguridad.Account.ListUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="container">--%>
        
        <%--<div class="page-header">

            <h2 style="font-weight: bold"> Listado General de Usuario</h2>
           
        </div>--%>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Listado General de Usuario</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                          
                            <div class="col-lg-12">
        <div class="form-horizontal" role="form">
            <div class="row">



                <div class="col-sm-8 col-lg-12">
                    <div class="form-group">
                        
                        <div class="col-md-12">
                            <asp:GridView ID="Gvblitsuser" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowDataBound="Gvblitsuser_RowDataBound" Width="100%" AllowPaging="True" OnPageIndexChanging="Gvblitsuser_PageIndexChanging" PageSize="50" CssClass="table table-bordered" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNumeroFila" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="UserName" HeaderText="Usuario" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="IsLockedOut" HeaderText="Bloqueado" />
                                    <asp:BoundField DataField="LastLoginDate" HeaderText="Ult. Login" />
                                    <asp:BoundField DataField="Comment" HeaderText="Departamento" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>

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
