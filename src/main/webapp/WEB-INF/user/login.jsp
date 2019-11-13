<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
	<head>
		<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
		<link rel="stylesheet"
	    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	    crossorigin="anonymous">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<meta charset="UTF-8">
	
		<!-- STYLE -->
		<style>
		body {
			background-image:url("/img/background.jpg");
			background-repeat: no-repeat;
	  		background-size: cover;
	  		margin:auto;
		}
		.form{
			margin: auto;
	  		width: 50%;
		}
		.form-group p{
			color:white;
		}
		.form-group h1{
			color:white;
		}
		</style>
		<title>GymBuddy, Gym Lovers Hub</title>
	</head>
	<body>
    <div class="container">
         <!-- HEADER LOGO -->
	    
	   <h1 style="color:white; font-weight:bold; font-size:55px; margin-left:-45px;" > <img  style = "width:105px; height:95px" src="/img/GymBuddyLogoFinalW.png" >ymBuddy</h1>
	    
	    
	    <br><br><br>
            <div class="form">
                <p>
                    <form:errors path="user.*" />
                </p>
                <div class="form-group">
				<h1 style="font-weight:bold">Login </h1>

             	<form method="post" action="/login"> <br><br>
		        <p>
		            <label for="email">Email</label>
		            <input type="text" id="email" name="email" class="form-control col-8" />
		        </p>
		        <p>
		            <label for="password">Password</label>
		            <input type="password" id="password" name="password" class="form-control col-8" />
		        </p>
		        <input type="submit" value="Login!" class="btn btn-primary" />
		    </form>
		     <c:out value="${error}" />
			   <p> New user? <a href="/registration">Register</a></p>
	</div>
	</div>

</div>
</body>