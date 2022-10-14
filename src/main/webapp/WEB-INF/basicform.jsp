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
<title>Form Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-flex">
		<h1 class="text-center">Fitness Test</h1>
			<a class="btn btn-primary" href="/home">Back to dashboard</a>
			<a class="btn btn-primary" href="https://www.armycombatfitnesstest.com/calculator">ACFT Score Calculator</a>
			
		<div class="section">
			<form:form action="/test/result" method="post" modelAttribute="tests">
				<form:hidden path="poster" value="${user_id }" />
				<!--current logged in user from session  -->

				<div class="flex">
					<div>
						<form:label path="firstName">First Name:</form:label>
						<form:errors path="firstName" />
						<form:input path="firstName" />
					</div>

					<div>
						<form:label path="lastName">Last Name:</form:label>
						<form:errors path="lastName" />
						<form:input path="lastName" />
					</div>
				</div>

				<div>
					<form:label path="unit">Unit:</form:label>
					<form:errors path="unit" />
					<form:input path="unit" />
				</div>

				<div class="flex">
					<div>
						<form:label path="age">Age:</form:label>
						<form:errors path="age" />
						<form:input type="number" path="age" />
					</div>
					<div>
						<form:label path="gender">Gender:</form:label>
						<form:errors path="gender" />
						<form:input path="gender" />
					</div>

					<div>
						<form:label path="grade">Grade:</form:label>
						<form:errors path="grade" />
						<form:input path="grade" />
					</div>
					<div>
						<form:label path="title">MOS:</form:label>
						<form:errors path="title" />
						<form:input path="title" />
					</div>
				</div>
				<h3>Body Composition:</h3>
				<div class="flex">
					<div>
						<form:label path="height">Height:</form:label>
						<form:errors path="height" />
						<form:input path="height" />
					</div>


					<div>
						<form:label path="weight">Weight:</form:label>
						<form:errors path="weight" />
						<form:input path="weight" />
						<div>
							<div>
								<form:label path="weightGo">Go:</form:label>
								<form:checkbox path="weightGo" />
								<form:errors class="text-danger" path="weightGo" />
							</div>

						</div>
					</div>




					<div>
						<form:label path="fat">Body Fat:</form:label>
						<form:errors path="fat" />
						<form:input path="fat" />
						<div>
							<div>
								<form:label path="bodyFatGo">Go:</form:label>
								<form:checkbox path="bodyFatGo" />
								<form:errors class="text-danger" path="bodyFatGo" />
							</div>
						</div>
					</div>
				</div>

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

				<h3>Power Throw:</h3>
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
						<form:label path="sprintDragCarryMinutes">Minutes</form:label>
						<form:input path="sprintDragCarryMinutes" />
						<form:label path="sprintDragCarrySeconds">Seconds</form:label>
						<form:input path="sprintDragCarrySeconds" />
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

