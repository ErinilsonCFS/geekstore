<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="br.com.fatec.Dominio.*"%>
<%@ page import="br.com.fatec.Controle.*"%>





<%
	Usuario usuario = (Usuario) session.getAttribute("usuario");
	Resultado resposta = (Resultado) session.getAttribute("resposta");
%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>AdminLTE 3 | Dashboard 2</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>


<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#">
        <i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.jsp" class="nav-link">Home</a>
      </li>
    </ul>  
  </nav>
  <!-- /.navbar -->


<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->

	<p class="brand-link"> <img	
		class="brand-image img-circle elevation-3" style="opacity: .8">
		<span class="brand-text font-weight-light">Painel do Usuário</span>
	</p>
	

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="brand-link">		
			<div class="info ">
				<h3>Olá, 
				<c:if test="${usuario == null || usuario == ''}">
					Generico
				</c:if>
				<c:if test="${usuario != null}">
					${usuario.getUserName()}
									</c:if>
			!</h3>
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

				<li class="nav-item has-treeview">
				<a href="http://localhost:8085/LES_V1/MyServletUser?operacao=Consultar&tela=UsuarioDado" class="nav-link"> 
					<i class="nav-icon fas fa-copy"></i>
					<p>Meus dados pessoais</p>
				</a>
				</li>


				<li class="nav-item has-treeview">
				<a href="http://localhost:8085/LES_V1/MyServletUser?operacao=Consultar&tela=UsuarioPedidos" class="nav-link"> 
					<i class="nav-icon fas fa-copy"></i>
					<p>Meus pedidos</p>
				</a>
				</li>

				<li class="nav-item has-treeview">
				<a href="http://localhost:8085/LES_V1/MyServletUser?operacao=Consultar&tela=UsuarioCupons" class="nav-link">
					<i class="nav-icon fas fa-copy"></i>
					<p>Meus Cupons</p>
				</a>
				</li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
</div>
<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="../dist/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="../plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="../plugins/raphael/raphael.min.js"></script>
<script src="../plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="../plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>

<!-- PAGE SCRIPTS -->
<script src="dist/js/pages/dashboard2.js"></script>

</body>

