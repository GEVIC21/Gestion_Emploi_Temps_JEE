<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des enseignants>
</head>
<body>
		<span><%@ include file="enseignant_home.jsp"%></span>
    <%-- 
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
			<ul class="navbar-nav">
				<li>
					<a href="<=%request.getContextPath()%>/list" class="nav-link">Listes des Enseignants</a>
				</li>
			</ul>
		</nav>
	</header>
	<br>
	
	<div class="row">
		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter un Enseignant</a>
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
							<td><c:out value="${enseignant.id}"/></td>
							<td><c:out value="${enseignant.nom}"/></td>
							<td><c:out value="${enseignant.prenom}"/></td>
							<td><c:out value="${enseignant.tel}"/></td>
							<td><c:out value="${enseignant.numero}"/></td>
							<td><c:out value="${enseignant.matricule}"/></td>
							<td><c:out value="${enseignant.email}"/></td>
							<td>
								<a href="edit?id=<c:out value='${enseignant.id}'/>">Modifier</a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="delete?id=<c:out value='${enseignant.id}'/>">Delete</a>
							</td>
						</tr>
					</c:forEach>.
				</tbody>
			</table>
		</div>
	</div>
--%>
</body>
</html>