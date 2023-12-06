<%@ page import="com.entities.User"%>

<!doctype html>
<html lang="en">
<head>
<title>Sidebar 07</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.css">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<span><%@ include file="main/header/header.jsp"%></span>
		<span><%@ include file="main/sidebar/sidebar.jsp"%></span>



		<%-- 
	<%
		User user1 = (User) session.getAttribute("user-ob");
		if (user1 == null) {
			session.setAttribute("login-msg", "s'il vous plait veuillez vous connectez");
			response.sendRedirect("login.jsp");
		}
	%>


	<div class="wrapper d-flex align-items-stretch">
		<nav id="sidebar" class="active">
			<h1>
				<a href="index.html" class="logo">M.</a>
			</h1>
			<ul class="list-unstyled components mb-5">
				<li class="active"><a href="#"><span class="fa fa-home"></span>
						Dashboard</a></li>
				<li><a href="#"><span class="fa fa-user"></span> About</a></li>
				<li><a href="#"><span class="fa fa-sticky-note"></span>
						Blog</a></li>
				<li><a href="#"><span class="fa fa-cogs"></span> Services</a></li>
				<li><a href="${pageContext.request.contextPath}/LogoutServlet"><span
						class="fa fa-paper-plane"></span> Déconnecter</a></li>
			</ul>


		</nav>

		<!-- Page Content  -->
		<div id="content" class="p-4 p-md-5">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-primary">
						<i class="fa fa-bars"></i> <span class="sr-only">Toggle
							Menu</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="#">Home</a>
							</li>

							<%
								User user = (User) session.getAttribute("user-ob");
							%>



							<li class="nav-item"><a class="nav-link" href="#"> <%=user.getName()%>
							</a></li>

							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/LogoutServlet">Se
									déconnecter</a></li>


						</ul>
					</div>
				</div>
			</nav>

			<span><%@ include file="tableDashboard.jsp"%></span>
			<h1 class="mb-1">
				Bienvenue <strong><%=user.getName()%></strong> sur notre application
				de gestion des emplois du temps
				<h1>Dashboard</h1>
			</h1>

		</div>
	</div>

	<footer>
		<div class="footer">
			<p>
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				All rights reserved | This template is made with <i
					class="icon-heart" aria-hidden="true"></i> by <a
					href="https://colorlib.com" target="_blank">Colorlib.com</a>
			</p>
		</div>
	</footer>
--%>
		
		<span><%@ include file="main/content/content.jsp"%></span>
		<span><%@ include file="main/footer/footer.jsp"%></span>
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
	</div>
	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script
		src="${pageContext.request.contextPath}/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath}/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script
		src="${pageContext.request.contextPath}/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath}/plugins/moment/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script
		src="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="${pageContext.request.contextPath}/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath}/dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath}/dist/js/pages/dashboard.js"></script>
</body>
</html>