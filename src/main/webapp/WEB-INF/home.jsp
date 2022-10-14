<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('/images/mainimage.jpg'); object-fit:cover">

	<div class="container">
		<div>
			<h1 class="p-3 mb-2 bg-dark text-white" style="text-align: center"> Welcome to the ACFT Dashboard ${thisUser.firstName} ${thisUser.lastName }!</h1>

			<a class="btn btn-primary" href="/test/new">New test</a> <a
				class="btn btn-primary" href="/logout">Logout</a>



			<div class="section">
				<table class="table">
					<thead>
						<tr>
							<th><h1>ACFT Record</h1></th>
							<th><h1>First Name</h1></th>
							<th><h1>Last Name</h1></th>
							<th><h1>Unit</h1></th>
							<th><h1>Action</h1></th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${allFitness }" var="tests">

							<tr>
								<td><a href="/tests/${tests.id}">${tests.createdAt }</a></td>
								<td>${tests.firstName }</td>
								<td>${tests.lastName }</td>
								<td>${tests.unit }</td>
								<c:if test="${tests.poster.id  eq user_id}">
								<td><form action="/home/${tests.id}" method="post">
										<input type="hidden" name="_method" value="delete"> <input
											type="submit" value="Delete">
									</form></td>
									</c:if>
							</tr>

						</c:forEach>

					</tbody>

				</table>
			</div>
		</div>

	</div>
</body>
</html>

