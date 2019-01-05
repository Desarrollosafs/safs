<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Seguridad.Account.AdminUser1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
       
  <%--<div class="page-header">
     
    <h4 style="font-weight:bold" >Administración de Usuario</h4>
    
  </div>--%>
         <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="page-header">
                        <h4><strong style="color: #808080; margin-left: 30px"> Administración de Usuarios</strong></h4>
                    </div>

                    <div class="panel-body">
                        <div class="post-content">

                            <div class="col-lg-12">
  <div class="form-horizontal" role="form">
    <div class="row">
         <%--<div class="col-sm-8 col-lg-6">
        <div class="form-group">
          <label for="Text_entrada" class="col-md-4 control-label">Expediente No.</label>
          <div class="col-md-8">
            <asp:TextBox ID="TextBox_EXPE_OFI" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
      </div>--%>
      <div class="col-sm-8 col-lg-6">
        <div class="form-group">
          <label for="Txtiddocumento" class="col-md-6 control-label">Ingresar Usuario</label>
          <div class="col-md-6">
           <asp:TextBox ID="txtbuscaruser" CssClass="form-control" runat="server" ></asp:TextBox>
              
          </div>
        </div>
      </div>
             
        <div class="col-sm-8 col-lg-6">
        <div class="form-group">
            <div class="col-md-8">
          <asp:Button ID="Bnt_buscar" runat="server" CssClass="btn btn-primary" OnClick="Bnt_buscar_Click" Text="Buscar.." />
           
            </div>
            </div>
        </div>
         <div class="col-sm-8 col-lg-12">
        <div class="form-group">
         
          <div class="col-md-12">
              <asp:GridView ID="Gvbuscauser" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" OnPageIndexChanging="Gvbuscauser_PageIndexChanging" OnSelectedIndexChanging="Gvbuscauser_SelectedIndexChanging" OnRowDataBound="Gvbuscauser_RowDataBound" DataSourceID="SqlDataSource1" OnPageIndexChanged="Gvbuscauser_PageIndexChanged" CssClass="table table-condesed" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                  <Columns>
                      <asp:TemplateField HeaderText="#">
                          <EditItemTemplate>
                              <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblNumeroFila" runat="server" Text="Label"></asp:Label>
                          </ItemTemplate>

                      </asp:TemplateField>
                      <asp:BoundField DataField="UserName" HeaderText="Usuario" />
                      <asp:BoundField DataField="UserId" HeaderText="ID" />
                      <asp:BoundField DataField="Email" HeaderText="Email" />
                      <asp:CheckBoxField DataField="IsLockedOut" HeaderText="Locked" />
                      <asp:BoundField DataField="LastLoginDate" HeaderText="Ult.Login" />
                      <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="Ult.Cambio" />
                      <asp:BoundField DataField="FailedPasswordAttemptCount" HeaderText="Fallas" />
                      <asp:BoundField DataField="Comment" HeaderText="Departamento" />

                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" CssClass="label label-info">ver mas...</asp:LinkButton>
                          </ItemTemplate>

                      </asp:TemplateField>


                  </Columns>


                  <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle  CssClass="GridPager" HorizontalAlign="Left" /> <%--BackColor="#666666" ForeColor="White"--%>
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="P_BUSCA_USER" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtbuscaruser" DefaultValue="0" Name="UserName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


          </div>
        </div>
      </div>
     
        </div>
      </div>
       </div>
   
        <div id="NotificarError" runat="server" visible="false">
            <div class="alert alert-danger" role="alert">
                <asp:Label runat="server" ID="Lblnitificaerror" ForeColor="White" Font-Bold="true"></asp:Label>
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
