<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${enseignant != null}">
					<form action="update" method="get">
				</c:if>

				<c:if test="${enseignant == null}">
					<form action="insert" method="get">
				</c:if>

				<caption>
					<h2>
						<c:if test="${enseignant != null}">
							Modifier Enseignant
						</c:if>
						<c:if test="${enseignant == null}">
							Ajouter Enseignant
						</c:if>
					</h2>
				</caption>

				<c:if test="${enseignant != null}">
					<input type="hidden" name="id" value="<c:out value='${enseignant.id}'/>" />
				</c:if>

				<fieldset class="form-group">
					<label>Nom</label> 
					<input type="text" value="<c:out value='${enseignant.nom}'/>" class='form-control' name="nom" required="required" />
				</fieldset>

				<fieldset class="form-group">
					<label>Prenom</label> 
					<input type="text" value="<c:out value='${enseignant.prenom}'/>" class='form-control' name="prenom" required="required" />
				</fieldset>

				<fieldset class="form-group">
					<label>Tel</label> 
					<input type="text" value="<c:out value='${enseignant.tel}'/>" class='form-control' name="tel" required="required" />
				</fieldset>

				<fieldset class="form-group">
					<label>Numero</label> 
					<input type="text" value="<c:out value='${enseignant.numero}'/>" class='form-control' name="numero" required="required" />
				</fieldset>

				<fieldset class="form-group">
					<label>Matricule</label> 
					<input type="text" value="<c:out value='${enseignant.matricule}'/>" class='form-control' name="matricule" required="required" />
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> 
					<input type="text" value="<c:out value='${enseignant.email}'/>" class='form-control' name="email" required="required" />
				</fieldset>

				<button type="submit" class="btn btn-success">Enregistrer</button>
				</form>

			</div>
		</div>
	</div>

</body>
</html>
