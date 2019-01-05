<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="archivos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    
     <script src="../../Scripts/jquery.min.js"></script>
    <script src="Js/bootstrap.min.js"></script>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
   
      
 
    <script type="text/javascript">
        function capLock(e) {
            kc = e.keyCode ? e.keyCode : e.which;
            sk = e.shiftKey ? e.shiftKey : ((kc == 16) ? true : false);
            if (((kc >= 65 && kc <= 90) && !sk) || ((kc >= 97 && kc <= 122) && sk))
                document.getElementById('divMayus').style.visibility = 'visible';
            else
                document.getElementById('divMayus').style.visibility = 'hidden';
        }
</script>
     <style type="text/css">
        #playground-container {
    height: 500px;
    overflow: hidden !important;
    
}
.main{margin-top:70px; 
-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
padding:0px;
background:#7cd6d8;
}
.fb:focus, .fb:hover{color:#FFF !important;}


.left-side{
	/*padding:30px 0px 0px;*/
	
	background-size:cover;
}
.left-side h3{
	/*font-size: 30px;
    font-weight: 900;
	color:#FFF;
	padding: 75px 10px 00px 26px;*/
        font-size: 20px;
    font-weight: 600;
    color: #FFF;
    padding: 170px 10px 00px 26px;
    TEXT-TRANSFORM: uppercase;
	}
	
	.left-side p{
   /*font-weight: 600;*/
       color: #9e4d0b;
    padding: 100px 0px 0px 26px;
    font-size: 170%;
	}
    

	
	.fb{background: #2d6bb7;
    color: #FFF;
    padding: 10px 15px;
    border-radius: 18px;
    font-size: 12px;
    font-weight: 600;
    margin-right: 15px;
	margin-left:26px;-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);}
	.tw{background: #20c1ed;
    color: #FFF;
    padding: 10px 15px;
    border-radius: 18px;
    font-size: 12px;
    font-weight: 600;
    margin-right: 15px;-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);}
	
	.right-side{
	padding:0px 0px 0px;
	background:#FFF;
	background-size:cover;
	min-height:514px;
}
	.right-side h3{
	font-size: 30px;
    font-weight: 700;
	color:#000;
	padding: 50px 10px 00px 50px;
	}
	.right-side p{
    /*font-weight:600;*/
	color:#000;
	/*padding:10px 50px 10px 50px;*/
	}
	.form{padding:10px 50px 10px 50px;}
    .form-control{box-shadow: none !important;
    border-radius: 0px !important;
    border-bottom: 1px solid #2196f3 !important;
    border-top: 1px !important;
    border-left: none !important;
    border-right: none !important;}
	.btn-deep-purple {
    background: #e38724;
    border-radius: 18px;
    padding: 5px 19px;
    color: #fff;
    font-weight: 600;
    float: right;
	-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
}
    </style>
    <div class="container">
	     <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
		<div class="col-md-10 col-md-offset-1 main" >
		<div class="col-md-6 left-side" style="background-image:url(images/slide-4.fw.png);max-width: 100%;background-position: bottom;" >
		<h3></h3>
		<p>Sistema de Administración Financiera (SAF)</p>
		<br/>


		</div><!--col-sm-6-->
		
		<div class="col-md-6 right-side">
		<h3>Inicio de Sesión</h3>
		
<!--Form with header-->
<div class="form">
    <%-- <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="" />--%>
    <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false" DestinationPageUrl="~/Default.aspx" FailureText="Su Intento de Inicio de Sección No se Realizo Correctamente, Vuelva a Intentarlo">
                    <LayoutTemplate>
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                        <div class="form-group" style="margin-top:40px; margin-bottom:10px">
                  
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" >Nombre de usuario</asp:Label>   
                            <asp:TextBox runat="server" ID="UserName"  CssClass="form-control input-lg" required="true" />
                       
                           
                </div>
                        <div class="form-group">
                  
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Password" >Contraseña</asp:Label>
                             <asp:TextBox runat="server" ID="Password" TextMode="Password"  CssClass="form-control input-lg" onkeypress="capLock(event)" required="true" />
                       
                   
                </div>
                          

                     
                     
                         <div id="divMayus" style="visibility:hidden;color:red"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Caps Lock is on.</div> 

                        <div class="form-group" style="margin-bottom:10px">
                            <asp:CheckBox runat="server" ID="RememberMe" CssClass="checkbox checkbox-warning" Text="¿Recordar cuenta?"  />

                            <div class="text-xs-center">
                                <asp:Button ID="Button2" runat="server" CommandName="Login" Text="Iniciar sesión" CssClass="btn btn-deep-purple" />
                            </div>
                    </LayoutTemplate>
                </asp:Login>

    <br />

    <div class="col-sm-12" style="MARGIN-TOP: 30PX;">
        
            <div class="col-sm-6">
                <p>
                    <asp:HyperLink runat="server" ID="lnkOlvidePass" NavigateUrl="~/Recuperar_pass.aspx" CausesValidation="False" Style="color: black;">¿Olvidó su contraseña?</asp:HyperLink>

                </p>
            </div>
        <div class="col-sm-6">
        <p>
                    <asp:HyperLink runat="server" ID="HyperLink1" data-toggle="modal" data-target="#myModal" Style="color: black;">Acerca del SAF</asp:HyperLink>

                </p>
            </div>
       
        </div>
       

</div>
</div>
            </div>
        </div>
   <%-- <div class="container-fluid" id="idContainer">

        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="Images/avatar_2x.png" />
            
            <div id="form-signin">
                
                <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false" DestinationPageUrl="~/Default.aspx" FailureText="Su Intento de Inicio de Sección No se Realizo Correctamente, Vuelva a Intentarlo">
                    <LayoutTemplate>
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                        <div class="form-group col-md-12" style="margin-top:40px; margin-bottom:10px">
                  
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true" style="color: #001e44"></i></span>
                            <asp:TextBox runat="server" ID="UserName" placeholder="Nombre de usuario" CssClass="form-control" required="true" />
                        </div>
                   
                </div>
                        <div class="form-group col-md-12">
                  
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true" style="color: #001e44"></i></span>
                             <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Contraseña" CssClass="form-control" onkeypress="capLock(event)" required="true" />
                        </div>
                   
                </div>
                        <asp:Label runat="server" AssociatedControlID="UserName" Visible="false">Nombre de usuario</asp:Label>     

                       <asp:Label runat="server" AssociatedControlID="Password" Visible="false">Contraseña</asp:Label>
                     
                         <div id="divMayus" style="visibility:hidden;color:red"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Caps Lock is on.</div> 

                        <div class="form-group" style="margin-bottom:10px">
                            <asp:CheckBox runat="server" ID="RememberMe" CssClass="checkbox checkbox-warning" Text="¿Recordar cuenta?"  />

                            <div class="form-group">
                                <asp:Button runat="server" CommandName="Login" Text="Iniciar sesión" CssClass="btn btn-lg btn-primary btn-block btn-signin" />
                            </div>
                    </LayoutTemplate>
                </asp:Login>


                <p>
                    <asp:HyperLink runat="server" ID="lnkOlvidePass" NavigateUrl="~/Recuperar_pass.aspx" CausesValidation="False" Style="color: black;">¿Olvidó su contraseña?</asp:HyperLink>

                </p>
            </div>
        </div>

    </div>--%>

        </div>
    </form>
          <script src="../../Js/Jslogin.js"></script>
  
    
     <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Acerca del SAF</h4>
      </div>
      <div class="modal-body">
         <p>El Sistema de Administración Financiera (SAF), permite la administración fundamentalmente de Recursos Humanos, Facturación, Nominas, Proveedor, Contabilidad, Cuenta por cobrar, Cuenta por Pagar; el mismo ha sido desarrollado como herramienta de apoyo a las empresas en el manejo administrativo Financiero, el cual esta a disponibilidad grandes y pequeñas empresas, garantizándoles la confidencialidad de su información.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>
