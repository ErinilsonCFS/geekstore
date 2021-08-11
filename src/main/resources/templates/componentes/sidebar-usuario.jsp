<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="br.com.fatec.Dominio.*"%>
<%@ page import="br.com.fatec.Controle.*"%>





<%
	Usuario usuario = (Usuario) session.getAttribute("usuario");
	Resultado resposta = (Resultado) session.getAttribute("resposta");
%>


<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->

	<a href="#" class="brand-link" data-widget="pushmenu"> <img
		src="dist/img/menu-hamburguer.png" alt="AdminLTE Logo"
		class="brand-image img-circle elevation-3" style="opacity: .8">
		<span class="brand-text font-weight-light">Painel do Usuário</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="/WebContent/images/icons/icon-header-01.png">
			</div>
			<div class="info">

				<c:if test="${usuario == null || usuario == ''}">
					<a href="WebContent/index.jsp" class="d-block">Generico</a>
				</c:if>
				<c:if test="${usuario != null}">
					<a href="#">${usuario.getUserName()}</a>
				</c:if>
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

