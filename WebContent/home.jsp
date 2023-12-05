<%@ page import="com.entities.User"%>

<!doctype html>
<html lang="en">
<head>
<title>Sidebar 07</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

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

			<h1 class="mb-4">
				Bienvenue <strong><%=user.getName()%></strong> sur notre application
				de gestion des emplois du temps
				<h1>Dashboard</h1>
			</h1>
				
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>