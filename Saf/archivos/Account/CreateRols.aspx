<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateRols.aspx.cs" Inherits="archivos.Account.CreateRols" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Cambiar Clave</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                          
                            <div class="col-lg-12">
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
                                </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
