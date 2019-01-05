   <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Saf._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Inicio Saf</title>
   <link href="admin/css/font-awesome.css" rel="stylesheet" type="text/css" />

    <link href="admin/css/bootstrap.min.css" rel="stylesheet" />
<link href="admin/css/animate.css" rel="stylesheet" type="text/css" />
<link href="admin/css/admin.css" rel="stylesheet" type="text/css" />
    <link href="admin/css/style-responsive.css" rel="stylesheet" />
<link href="admin/css/jquerysctipttop.css" rel="stylesheet" type="text/css"/>
<%--<link rel="admin/stylesheet" href="plugins/scroll/nanoscroller.css"/>--%>
</head>
<body class="light_theme  fixed_header left_nav_fixed">
    <form id="form1" runat="server" >
    <div class="wrapper">
  <!--\\\\\\\ wrapper Start \\\\\\-->
  <div class="header_bar">
    <!--\\\\\\\ header Start \\\\\\-->
    <div class="brand">
      <!--\\\\\\\ brand Start \\\\\\-->
      <div class="logo" style="display:block"><p class="theme_color"><a href="../../Default.aspx" class="theme_color" >SAF</a><span class="theme_color"></span></p></div>
      <div class="small_logo" style="display:none"><img src="images/logosaft.png" width="50" height="47" alt="s-logo" /> <img src="images/logosaft.png" width="122" height="20" alt="r-logo" /></div>
    </div>
    <!--\\\\\\\ brand end \\\\\\-->
    <div class="header_top_bar">
      <!--\\\\\\\ header top bar start \\\\\\-->
      <a href="javascript:void(0);" class="menutoggle"> <i class="fa fa-bars"></i> </a>
      <div class="top_left">
        <div class="top_left_menu">
          <ul>
           
          </ul>
        </div>
      </div>
      
      <div class="top_right_bar">
        <div class="top_right">
          <div class="top_right_menu">
            
             <section id="login">
                        <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                            <AnonymousTemplate>
                                <ul class="nav navbar-nav navbar-left menu-top">
                                    <li><a id="loginLink" runat="server" href="Login.aspx"><i class="fa fa-sign-in"></i> Iniciar sesión</a></li>
                                </ul>
                            </AnonymousTemplate>
                            <LoggedInTemplate>

                                <p>
                                    Hola, <a id="A1" runat="server" class="username" href="~/ChangePassword.aspx" title="Administrar su Cuenta">
                                        <asp:LoginName ID="LoginName1" runat="server" />
                                    </a><i class="fa fa-sign-out"></i>
                                    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutText="Cerrar sesión" LogoutPageUrl="~/Login.aspx" />
                                </p>
                            </LoggedInTemplate>
                        </asp:LoginView>
                    </section>
           
          </div>
        </div>
        

      <%--  <a href="javascript:;" class="toggle-menu menu-right push-body jPushMenuBtn rightbar-switch"><i class="fa fa-comment chat"></i></a>--%>
        
      </div>
    </div>
    <!--\\\\\\\ header top bar end \\\\\\-->
  </div>
  <!--\\\\\\\ header end \\\\\\-->
  <div class="inner">
    <!--\\\\\\\ inner start \\\\\\--><div class="left_nav">

      <!--\\\\\\\left_nav start \\\\\\-->
      <div class="search_bar"> <%--<i class="fa fa-search"></i>--%>
       <%-- <input name="" type="text" class="search" placeholder="Search Dashboard..." />--%>
      </div>
      <div class="left_nav_slidebar">
        <ul>
          <li class="left_nav_active theme_border"><a href="javascript:void(0);"><i class="fa fa-list-ul"></i>Contabilidad <span class="left_nav_pointer"></span> <span class="plus"><i class="fa fa-plus"></i></span> </a>
            <ul class="opened" style="display:block">
              <li><a href="../../Reportes/BalanceGeneral.aspx"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Registrar Documentos</b> </a></li>
              <li><a href="../../Diario/DiarioGeneral.aspx"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Entrada de Diario</b> </a></li>  
              <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Catálogo de Cuentas</b> </a></li>    
              <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Captura Movimientos</b> </a></li> 
                <li><a href="../../Autorizacion/Autorizacion_Asientos.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Autorización Asientos</b> </a></li>  
               <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Cierre de Mes</b> </a></li>  
                 <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Periodo Contable</b> </a></li> 
                <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Cuenta por Pagar</b> </a></li>   
                <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Cuenta por Cobrar</b> </a></li> 
                <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Compras</b> </a></li>  
                </ul>
          </li>
            
             <li> <a href="javascript:void(0);"> <i class="fa fa-dollar"></i>Nomina <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Documentos</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Contenidos en Caja</b></a></li>
            </ul>
          </li>
            
             <li> <a href="javascript:void(0);"> <i class="fa fa-users"></i>Proveedor <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
              <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Administración</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Consultas</b></a></li>
            </ul>
          </li>
             <li> <a href="javascript:void(0);"> <i class="fa fa-check-circle"></i>Inventarios <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Documentos</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Contenidos en Caja</b></a></li>
            </ul>
          </li>
             <li> <a href="javascript:void(0);"> <i class="fa fa-users"></i>RRHH <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Administración</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Consultas</b></a></li>
            </ul>
          </li>
           <li> <a href="javascript:void(0);"> <i class="fa fa-users"></i>Clientes <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="Cliente/Add_Clientes.aspx"><i class="fa fa-circle"></i> <b> Administración</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Consultas</b></a></li>
            </ul>
          </li>
            
            <li> <a href="javascript:void(0);"> <i class="fa fa-file-text-o"></i>Ventas <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Documentos</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Contenidos en Caja</b></a></li>
            </ul>
          </li>
            <li> <a href="javascript:void(0);"> <i class="fa fa-building-o"></i>Bancos <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Documentos</b></a></li>
               <li><a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Contenidos en Caja</b></a></li>
            </ul>
          </li>
          
            <li> <a href="javascript:void(0);"> <i class="fa fa-cogs"></i> Mantenimientos <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
               <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Gestión</b></a></li>
               <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Departamento</b></a></li>
               <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Tipo de Documentos</b></a></li>
               <li><a href="#"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Tipo de Documentos</b></a></li> 
            </ul>
          </li>
            
            <li> <a href="javascript:void(0);"> <i class="fa fa-user"></i> Usuarios <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
              <li runat="server" id="liAdminUser" visible="true"><a href="../../Account/Register.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Registrar Usuario</b></a></li>
              <li><a href="../../Account/AdminUser.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Administrar Usuario</b></a></li>
              <li><a href="../../Account/UsersAndRoles.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Administrar Roles</b></a></li>
              <li><a href="../../Account/ManageRoles.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Crear/Eliminar Roles</b></a></li>
              <li><a href="../../Account/ResetPass.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Resetear Clave</b></a></li>
              <li><a href="../../Reportes/ReportUsuarios.aspx"><span>&nbsp;</span> <i class="fa fa-circle"></i> <b> Listado Gral. de Usuarios</b></a></li>
            </ul>
          </li>
            <li> <a href="javascript:void(0);"> <i class="fa fa-question-circle"></i> Ayuda <span class="plus"><i class="fa fa-plus"></i></span></a>
            <ul>
              <li> <a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Crear Requerimiento</b> </a> </li>
              <li> <a href="#"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Manual de Usuario</b> </a> </li>
              <%--<li> <a href="contactlist.html"> <span>&nbsp;</span> <i class="fa fa-circle"></i> <b>Contact List</b> </a> </li>--%>
             
            </ul>
          </li>
            
        </ul>
          <button type="button" class="btn btn-default btn-lg" style="width:98%;border-color: #e38724; font-size:11px" data-toggle="modal" data-target="#myModal">
  Reportes
</button>
      </div>
    </div>
    <!--\\\\\\\left_nav end \\\\\\-->
    <div class="contentpanel">
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h1>Dashboard</h1>
          <h2 class="">SISTEMA DE ADMINISTRACIÓN FINANCIERA</h2>
        </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">INICIO</a></li>
            <li><a href="#">FQA</a></li>
            <li class="active">MANUAL DE USUARIO</li>
          </ol>
        </div>
      </div>
        <style type="text/css">
      

* {
  -webkit-transition: 300ms;
  transition: 300ms;
}

.intro {
  text-align: center;
}

ul {
  list-style-type: none;
}

h1, h2, h3, h4, h5, p {
  font-weight: 400;
}

a {
  text-decoration: none;
  color: inherit;
}



.movie-card {
  background: #ffffff;
  box-shadow: 0px 6px 18px rgb(227, 135, 36);
  width: 100%;
  max-width: 250px;
  margin: 0.6em;
  border-radius: 10px;
  display: inline-block;
}

.movie-header {
  padding: 0;
  margin: 0;
  height: 150px;
  width: 100%;
  display: block;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.cxp {
  background: url("../images/cxp.jpg");
  background-size: cover;
}

.cxc {
  background: url("../images/cxc.jpg");
  background-size: cover;
}
.nomina {
  background: url("../images/nomina.jpg");
  background-size: cover;
}
.compras {
  background: url("../images/compras.jpg");
  background-size: cover;
  }
.proveedor {
  background: url("../images/proveedor.jpg");
  background-size: cover;
}
.inventario {
  background: url("../images/inventario.jpg");
  background-size: cover;
}
.empleados {
  background: url("../images/empleados.jpg");
  background-size: cover;
}
.clientes {
  background: url("../images/clientes.jpg");
  background-size: cover;
}
.contabilidad {
  background: url("../images/contabilidad.jpg");
  background-size: cover;
}
.ventas {
  background: url("../images/ventas.jpg");
  background-size: cover;
}
.bancos {
  background: url("../images/bancos.jpg");
  background-size: cover;
}
.theDarkTower {
  background: url("../images/fondos.jpg");
  background-size: cover;
  background-position: 100% 100%;
}

.bladeRunner2049 {
  background: url("../images/fondos.jpg");
  background-size: cover;
  background-position: 100% 80%;
}

.header-icon-container {
  position: relative;
}

.header-icon {
  width: 100%;
  height: 367px;
  line-height: 367px;
  text-align: center;
  vertical-align: middle;
  margin: 0 auto;
  color: #ffffff;
  font-size: 54px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 20px #6ABCEA;
  opacity: .85;
}

.header-icon:hover {
  background: rgba(0, 0, 0, 0.15);
  font-size: 74px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 30px #6ABCEA;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  opacity: 1;
}

.movie-card:hover {
  -webkit-transform: scale(1.03);
          transform: scale(1.03);
  box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.08);
}

.movie-content {
  padding: 1px 14px 24px 18px;
  margin: 0;
}

.movie-content-header, .movie-info {
  display: table;
  width: 100%;
}

.movie-title {
  font-size: 14px;
  margin: 0;
  display: table-cell;
}

.imax-logo {
  width: 50px;
  height: 15px;
  /*background: url("https://6a25bbd04bd33b8a843e-9626a8b6c7858057941524bfdad5f5b0.ssl.cf5.rackcdn.com/media_kit/3e27ede823afbf139c57f1c78a03c870.jpg") no-repeat;*/
  background-size: contain;
  display: table-cell;
  float: right;
  position: relative;
  margin-top: 5px;
}

.movie-info {
  margin-top: 1em;
}

.info-section {
  display: table-cell;
  text-transform: uppercase;
  text-align: center;
}

.info-section:first-of-type {
  text-align: left;
}

.info-section:last-of-type {
  text-align: right;
}

.info-section label {
  display: block;
  color: rgba(0, 0, 0, 0.5);
  margin-bottom: .5em;
  font-size: 9px;
}

.info-section span {
  font-weight: 700;
  font-size: 11px;
}

@media screen and (max-width: 500px) {
  .movie-card {
    width: 95%;
    max-width: 95%;
    margin: 1em;
    display: block;
  }

  .container {
    padding: 0;
    margin: 0;
  }
}
</style>
        
      <div class="container clear_both padding_fix">
          <div class="container" style="text-align:center">

	
	<div class="movie-card">
		<div class="movie-header cxp">
            
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
                
			</div>
            
		</div><!--movie-header-->
        <hr />
		<div class="movie-content">
			<div class="movie-content-header">
                           
				<a href="#">
					<h3 class="movie-title">Cuenta por Pagar</h3>
				</a>
			
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
	
	<div class="movie-card">
		<div class="movie-header cxc">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Cuenta por Cobrar</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
	<div class="movie-card">
		<div class="movie-header nomina">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Nomina</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div>
              <div class="movie-card">
		<div class="movie-header compras">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Compras</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div>
              <div class="movie-card">
		<div class="movie-header proveedor">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Proveedor</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div>
              <div class="movie-card">
		<div class="movie-header inventario">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Inventarios</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div>
	<div class="movie-card">
		<div class="movie-header empleados">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">RRHH</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
	
	<div class="movie-card">
		<div class="movie-header clientes">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Clientes</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
	<div class="movie-card">
		<div class="movie-header contabilidad">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Contabilidad</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
<div class="movie-card">
		<div class="movie-header ventas">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Ventas</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
<div class="movie-card">
		<div class="movie-header bancos">
			<div class="header-icon-container">
				<%--<a href="#">
					<i class="material-icons header-icon"></i>
				</a>--%>
			</div>
		</div><!--movie-header-->
        <hr/>
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Bancos</h3>
				</a>
				
			</div>
			
		</div><!--movie-content-->
	</div><!--movie-card-->
</div><!--container-->


      </div>
      <!--\\\\\\\ container  end \\\\\\-->
    </div>
    <!--\\\\\\\ content panel end \\\\\\-->
  </div>
  <!--\\\\\\\ inner end\\\\\\-->
</div>



        
<script src="../../admin/js/jquery-2.1.0.js"></script>
<script src="../../admin/js/bootstrap.min.js"></script>
<script src="../../admin/js/jquery.slimscroll.min.js"></script>
<script src="../../admin/js/common-script.js"></script>
<script src="../../admin/js/jquery.sparkline.js"></script>
<script src="../../admin/js/sparkline-chart.js"></script>
<%--<script src="admin/js/graph.js"></script>--%>
<%--<script src="admin/js/edit-graph.js"></script>--%>

<%--<script src="admin/plugins/morris/morris.min.js" type="text/javascript"></script> 
<script src="admin/plugins/morris/raphael-min.js" type="text/javascript"></script>  
<script src="admin/plugins/morris/morris-script.js"></script> --%>


<%--<script src="admin/js/jPushMenu.js"></script> --%>
        <script type="text/javascript" src="../../admin/js/Jquery.canvasjs.min.js"></script>
        

    </form>
    <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reportes</h4>
      </div>
      <div class="modal-body">
          <script>
              $(document).ready(function () {
                  $('.menu li:has(ul)').hover(function (e) {
                      e.preventDefault();
                      if ($(this).hasClass('activado')) {
                          $(this).removeClass('activado');
                          $(this).children('ul').slideUp();
                      } else {
                          $('.menu li ul').slideUp();
                          $('.menu li').removeClass('activado');
                          $(this).addClass('activado');
                          $(this).children('ul').slideDown();
                      }
                  });
              });
          </script>
       <div class="container">
	<div class="row">
		<div class="col-md-12">
                        <div class="support-menu">
                            <nav class="vertical">
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            Contabilidad
                                        </a>
                                            <ul>
                                                <li>
                                                    <a href="../../Reportes/BalanceGeneral.aspx">
                                                        Balance General
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="../../Reportes/Reporte_B_Comprobacion.aspx">
                                                        Balance Comprobacion
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="../../Reportes/Reporte_Mayor.aspx">
                                                        Mayor
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        How To's
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Site Features
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Submissions
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Recursos Humanos
                                        </a>
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        iOS
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Android
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Amazon
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Windows
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Chrome OS
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Facturación
                                        </a>
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        Roku
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Amazon Fire TV
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Proveedor
                                        </a>
                                        <ul>
                                                <li>
                                                    <a href="#">
                                                        Roku
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Amazon Fire TV
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Clientes
                                        </a>
                                        <ul>
                                                <li>
                                                    <a href="#">
                                                        Roku
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Amazon Fire TV
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Inventarios
                                        </a>
                                        <ul>
                                                <li>
                                                    <a href="#">
                                                        Roku
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        Amazon Fire TV
                                                    </a>
                                                </li>
                                            </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
	</div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>

