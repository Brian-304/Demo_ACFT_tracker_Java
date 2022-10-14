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
<title>Exercise Events</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-flex">
		<h1>Exercise Events</h1>
		<div class="section">
			<form:form action="/events/create" method="post" modelAttribute="tests">
				<form:hidden path="poster" value="${user_id }" />

				<h3>3 Repition Deadlift:</h3>
				<div class="flex">

					<div>

						<form:label path="deadliftFirstAttempt">1st Attempt</form:label>
						<form:input path="deadliftFirstAttempt" />
					</div>
					<div>
						<form:label path="deadliftSecondAttempt">2nd Attempt</form:label>
						<form:input path="deadliftSecondAttempt" />
					</div>
					<div>
						<form:label path="deadliftPoints">Points</form:label>
						<form:input path="deadliftPoints" />
					</div>
					<div>
						<form:label path="deadliftGrader">Grader</form:label>
						<form:input path="deadliftGrader" />
					</div>
				</div>

				<h3>Standing Power Throw:</h3>
				<div class="flex">

					<div>

						<form:label path="powerThrowFirstAttempt">1st Attempt</form:label>
						<form:input path="powerThrowFirstAttempt" />
					</div>
					<div>
						<form:label path="powerThrowSecondAttempt">2nd Attempt</form:label>
						<form:input path="powerThrowSecondAttempt" />
					</div>
					<div>
						<form:label path="powerThrowPoints">Points</form:label>
						<form:input path="powerThrowPoints" />
					</div>
					<div>
						<form:label path="powerThrowGrader">Grader</form:label>
						<form:input path="powerThrowGrader" />
					</div>
				</div>

				<h3>Hand Release Push-ups:</h3>
				<div class="flex">

					<div>

						<form:label path="pushUpsRepitions">Repetitions</form:label>
						<form:input path="pushUpsRepitions" />
					</div>
					<div>
						<form:label path="pushUpsPoints">Points</form:label>
						<form:input path="pushUpsPoints" />
					</div>
					<div>
						<form:label path="pushUpsGrader">Grader</form:label>
						<form:input path="pushUpsGrader" />
					</div>
				</div>

				<h3>Sprint Drag Carry:</h3>
				<div class="flex">

					<div>

						<form:label path="SprintDragCarryTime">Time</form:label>
						<form:input path="SprintDragCarryTime" />
					</div>
					<div>
						<form:label path="SprintDragCarryPoints">Points</form:label>
						<form:input path="SprintDragCarryPoints" />
					</div>
					<div>
						<form:label path="SprintDragCarryGrader">Grader</form:label>
						<form:input path="SprintDragCarryGrader" />
					</div>
				</div>
				<input type="submit" value="Submit" />
			</form:form>
		</div>
	</div>
</body>
</html>

