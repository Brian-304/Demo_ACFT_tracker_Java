<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('/images/loginimage.jpg'); object-fit:cover">
	<h1 class="p-3 mb-2 bg-dark text-white" style="text-align: center">Please Sign in or Register</h1>
    
    <div class="container">
    <div class="section">
        <div class="container1 d-flex justify-content-around">
            <form:form class="w-50 mx-auto my-3" action="/register" method="post"
            modelAttribute="newUser">
                <h1>Register</h1>
                <div class="mb-3">
                    <label>First Name: </label>
                    <form:input path="firstName" class="form-control" placeholder="enter First_Name" />
                    <form:errors path="firstName" class="text-danger" />
                </div>
                
                <div class="mb-3">
                    <label>Last Name: </label>
                    <form:input path="lastName" class="form-control" placeholder="enter Last_Name" />
                    <form:errors path="lastName" class="text-danger" />
                </div>
        
                <div class="mb-3">
                    <label>Email: </label>
                    <form:input path="email" class="form-control" placeholder="name@example.com" />
                    <form:errors path="email" class="text-danger" />
                </div>
        
                <div class="form-group" >
                    <label>Password: </label>
                    <form:password path="password" class="form-control" />
                    <form:errors path="password" class="text-danger" />
                </div>
                
                <div class="mb-3">
                    <label>Confirm Password: </label>
                    <form:password path="confirm" class="form-control" />
                    <form:errors path="confirm" class="text-danger" />
                </div>
                
                <form:errors path="*" class="text-danger" />
        
                <input type="submit" value="Register" class="btn btn-success d-block mx-auto my-1">
            </form:form>
            
            <form:form class="w-25 mx-auto my-3" action="/login" method="post"
            modelAttribute="newLogin">
                <h1>Login</h1>
        
                <div class="mb-3">
                    <label>Email: </label>
                    <form:input path="email" class="form-control" placeholder="name@example.com" />
                    <form:errors path="email" class="text-danger" />
                </div>
        
                <div class="mb-3">
                    <label>Password: </label>
                    <form:password path="password" class="form-control" />
                    <form:errors path="password" class="text-danger" />
                </div>
        
                <input type="submit" value="Login" class="btn btn-success d-block mx-auto my-1">
            </form:form>
        </div>
        </div>
    </div>
</body>
</html>

