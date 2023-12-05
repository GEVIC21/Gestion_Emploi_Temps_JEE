<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException"%>
<%@ page import="com.DB.DBConnect"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>
<body>

	<!-- Page header  -->
	<div id="content" class="p-4 p-md-5">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">


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
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/register.jsp">S'inscrire</a>
					</li>
				</ul>
			</div>
		</div>
		</nav>
		<!-- Page header Fin  -->



		<!-- -----------------------------Form Login------------------ -->
		<section class="vh-100" style="background-color: white;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img
									src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
									alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 0rem; height: 100%;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<form action="${pageContext.request.contextPath}/LoginServlet"
										method="post">

										<div class="d-flex align-items-center mb-3 pb-1">
											<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
											<span class="h1 fw-bold mb-0">Logo</span>
										</div>

										<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign
											into your account</h5>

										<div class="form-outline mb-4">
											<input type="email" id="form2Example17"
												class="form-control form-control-lg" name="email" /> <label
												class="form-label" for="form2Example17">Email
												address</label>
										</div>

										<div class="form-outline mb-4">
											<input type="password" id="form2Example27"
												class="form-control form-control-lg" name="password" /> <label
												class="form-label" for="form2Example27">Password</label>
										</div>

										<div class="form-outline mb-4">
											<!-- Add this checkbox in your login form -->
											<input type="checkbox" name="rememberMe"> Se souvenir de moi
										</div>

										<div class="pt-1 mb-4">
											<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
										</div>

										<a class="small text-muted" href="#!">Forgot password?</a>
										<p class="mb-5 pb-lg-2" style="color: #393f81;">
											Don't have an account? <a
												href="${pageContext.request.contextPath}/register.jsp"
												style="color: #393f81;">Register here</a>
										</p>
										<a href="#!" class="small text-muted">Terms of use.</a> <a
											href="#!" class="small text-muted">Privacy policy</a>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<script>
    // Check if there is a login error attribute set by the servlet
    <%if (request.getAttribute("loginError") != null) {%>
        // Display a SweetAlert notification based on the error type
        <%String errorType = (String) request.getAttribute("loginErrorType");%>
        <%if ("incorrectCredentials".equals(errorType)) {%>
            Swal.fire({
                icon: 'error',
                title: 'Incorrect Credentials',
                text: '<%=request.getAttribute("loginError")%>',
            });
        <%} else if ("databaseError".equals(errorType)) {%>
            Swal.fire({
                icon: 'error',
                title: 'Database Error',
                text: '<%=request.getAttribute("loginError")%>',
            });
        <%} else if ("invalidInput".equals(errorType)) {%>
            Swal.fire({
                icon: 'error',
                title: 'Invalid Input',
                text: '<%=request.getAttribute("loginError")%>' ,
			});
		<%}%>
			
		<%}%>
			
		</script>
</body>
</html>