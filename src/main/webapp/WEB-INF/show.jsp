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
<title>Show Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('/images/showimage.jpg'); object-fit:cover">
	
	<div class="container">
	<h1 class="p-3 mb-2 bg-dark text-white" style="text-align: center">ACFT Score Card</h1>
	<a class="btn btn-primary" href="/home">Back to dashboard</a>
		<div class="section">
		<h1>Date: ${thisFitnessTest.createdAt }</h1>
			<h1>Unit: ${thisFitnessTest.unit }</h1>
			<h2>Name: ${thisFitnessTest.firstName } ${thisFitnessTest.lastName }</h2>
			<h1>Basic Information</h1>
			<h2>Age: ${thisFitnessTest.age } Gender: ${thisFitnessTest.gender } Grade: ${thisFitnessTest.grade } MOS:${thisFitnessTest.title } </h2>
			<h2>Height: ${thisFitnessTest.height } Weight: ${thisFitnessTest.weight }/ ${thisFitnessTest.weightGo} Body Fat%: ${thisFitnessTest.fat }/ ${thisFitnessTest.bodyFatGo}</h2>
			<h1>Event Exercises</h1>
			<h2>3 Repetition Maximum Deadlift:</h2>
			<h2>First Attempt: ${thisFitnessTest.deadliftFirstAttempt} Second Attempt: ${thisFitnessTest.deadliftSecondAttempt} Points: ${thisFitnessTest.deadliftPoints} Grader: ${thisFitnessTest.deadliftGrader}</h2>
			<h2>Standing Power Throw:</h2>
			<h2>First Attempt: ${thisFitnessTest.powerThrowFirstAttempt} Second Attempt: ${thisFitnessTest.powerThrowSecondAttempt} Points: ${thisFitnessTest.powerThrowPoints} Grader: ${thisFitnessTest.powerThrowGrader}</h2>
			<h2>Hand Release Push-Ups:</h2>
			<h2>Repetitions: ${thisFitnessTest.pushUpsRepitions} Points: ${thisFitnessTest.pushUpsPoints} Grader: ${thisFitnessTest.pushUpsGrader}</h2>
			<h2>Sprint Drag Carry:</h2>
			<h2>Minutes: ${thisFitnessTest.sprintDragCarryMinutes} Seconds: ${thisFitnessTest.sprintDragCarrySeconds} Points: ${thisFitnessTest.sprintDragCarryPoints} Grader: ${thisFitnessTest.sprintDragCarryGrader}</h2>
		</div>

		<%-- <c:if test="${thisFitnessTest.poster.id  eq user_id}">
			<a href="/edit/${thisFitnessTest.id }">edit</a>
		</c:if> --%>
	</div>

</body>
</html>

