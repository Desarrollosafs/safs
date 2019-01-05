<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enviar_Email.aspx.cs" Inherits="Archivo.Central.Enviar_Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 <asp:UpdateProgress ID="updateProgress" runat="server" AssociatedUpdatePanelID="Update_form_email">
                <ProgressTemplate>
                    <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                        <asp:Image ID="imgUpdateProgress" CssClass="img-responsive" runat="server" Height="150px" Width="150px" ImageUrl="~/images/ajax-loader.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left:45%; text-align:center;" />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>

     <asp:UpdatePanel ID="Update_form_email" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                                        <ContentTemplate>
    <div class="form"  id="contact">
  <fieldset>
    <legend> <i class="fa fa-send" aria-hidden="true"></i> Reportar Inconveniente Técnico </legend>
 
      <div class="form-group">
	        <label class="control-label">De</label>
			<div class="controls">
			    <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user-circle"></i></span>
			   <asp:TextBox ID="txtDe" runat="server"  class="form-control" ReadOnly="true" required="true" data-error="Bruh, that email address is invalid" TextMode="Email"></asp:TextBox>
				
                </div>
			</div>
		</div>

         <div class="form-group">
	        <label class="control-label">Para</label>
			<div class="controls">
			    <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
					 <asp:TextBox ID="txtPara" runat="server" ReadOnly="true"  CssClass="form-control" >soporte@saesp.gob.do</asp:TextBox>
				</div>
			</div>	
		</div>
          
           <div class="form-group">
	        <label class="control-label">Asunto</label>
			<div class="controls">
			    <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-list"></i></span>
               <asp:TextBox ID="txtAsunto" CssClass="form-control" runat="server" ReadOnly="true">Notificación de Error Aplicación</asp:TextBox>
				</div>
			</div>	
		</div>
         
         <div class="form-group ">
	        <label class="control-label">Mensaje</label>
			<div class="controls">
			    <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-pencil-square"></i></span>
					 <asp:TextBox ID="txtTexto" Rows="4" Columns="78" runat="server" required="true" class="form-control" data-error="Bruh, that email address is invalid" TextMode="MultiLine"></asp:TextBox><br />
				</div>
			</div>
		</div>
      <div class="form-group ">
	       
			<div class="controls">
			    <div class="input-group">				
					 <asp:Label ID="Label_aviso" runat="server" CssClass="label label-success" Font-Size="Large" ></asp:Label>
				</div>
			</div>
		</div>
      <div class="form-group ">
	       
			<div class="controls">
			    <div class="input-group">				
					 <asp:Label ID="Label_error" runat="server" CssClass="label label-danger" Font-Size="Large" ></asp:Label>
				</div>
			</div>
		</div>
            <div class="form-group"> 
             <asp:Button ID="Button_ENVIAR" runat="server" OnClick="Button_ENVIAR_Click" CssClass="btn btn-primary" Text="Enviar.."  />
             </div>
      
  </fieldset>
</div>    
</ContentTemplate>
   </asp:UpdatePanel>

                   
</asp:Content>
