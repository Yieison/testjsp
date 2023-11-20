<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aplicación de Gestión de Usuarios</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand">Gestión de Usuarios</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Usuarios</a></li>
			</ul>
		</nav>
	</header>
	<br />

	<div class="row">
		<!-- <div class="alert alert-success" ngIf="message">{{message}}</div> -->
		<div class="container">
			<h3 class="text-center">Listado de Usuarios</h3>
			<br>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar
					Nuevo Usuario</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Email</th>
						<th>País</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<!-- for (Todo todo: todos) { -->
					<c:forEach var="usuario" items="${listUsuarios}">
						<tr>
							<td><c:out value="${usuario.id}" /></td>
							<td><c:out value="${usuario.nombre}" /></td>
							<td><c:out value="${usuario.email}" /></td>
							<td><c:out value="${usuario.pais}" /></td>
							<td><a href="edit?id=<c:out value='${usuario.id}' />">Editar</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${usuario.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>