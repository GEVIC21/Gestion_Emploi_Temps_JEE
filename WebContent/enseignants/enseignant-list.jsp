<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des enseignants</title>
</head>
<body>


	<header> <nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: blue">
	<ul class="navbar-nav">
		<li><a href="<=%request.getContextPath()%>/list" class="nav-link">Listes
				des Enseignants</a></li>
	</ul>
	</nav> </header>
	<br>

	<div class="row">
		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter
					un Enseignant</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nom</th>
						<th>Prenom</th>
						<th>Tel</th>
						<th>Numero</th>
						<th>Matricule</th>
						<th>Email</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="enseignant" items="${ListEnseignant}">
						<tr>
							<td><c:out value="${enseignant.id}" /></td>
							<td><c:out value="${enseignant.nom}" /></td>
							<td><c:out value="${enseignant.prenom}" /></td>
							<td><c:out value="${enseignant.tel}" /></td>
							<td><c:out value="${enseignant.numero}" /></td>
							<td><c:out value="${enseignant.matricule}" /></td>
							<td><c:out value="${enseignant.email}" /></td>
							<td><a href="edit?id=<c:out value='${enseignant.id}'/>">Modifier</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${enseignant.id}'/>">Delete</a></td>
						</tr>
					</c:forEach>
					.
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
--%>



<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">Enseignants</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid"></div>
		<div class="card">
			<div class="card-header">
				<h1 class="card-title">Liste des Enseignants</h1>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<div class="container text-left">
					<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter
						un Enseignant</a>
				</div>
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nom</th>
							<th>Prenom</th>
							<th>Tel</th>
							<th>Numero</th>
							<th>Matricule</th>
							<th>Email</th>
							<th>Actions</th>
						</tr>
					</thead>
					<c:forEach var="enseignant" items="${ListEnseignant}">
						<tr>
							<td><c:out value="${enseignant.id}" /></td>
							<td><c:out value="${enseignant.nom}" /></td>
							<td><c:out value="${enseignant.prenom}" /></td>
							<td><c:out value="${enseignant.tel}" /></td>
							<td><c:out value="${enseignant.numero}" /></td>
							<td><c:out value="${enseignant.matricule}" /></td>
							<td><c:out value="${enseignant.email}" /></td>
							<td><a href="edit?id=<c:out value='${enseignant.id}'/>">Modifier</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${enseignant.id}'/>">Delete</a></td>
						</tr>
					</c:forEach>


				</table>
			</div>
			<!-- /.card-body -->
		</div>
	</section>
</div>