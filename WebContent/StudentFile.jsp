<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="/School/bootstrap/bootstrap.css">
<script src="/School/bootstrap/jquery-3.2.1.min.js"></script>
<script src="/School/bootstrap/bootstrap.js"></script>
<style>
body {
	background-color:light grey;
}

h1 {
text-color:white;
}
</style>
</head>
<body>
	
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-12">
			<h1 align="center">
				<a href="http://localhost:8080/School/StudentsList">back to
					student details..</a>
			</h1>
			<br>
			<br>
			<br>
			<br>
			
		</div>
		<div class="panel-body">
			<div class="col-md-12">
				<div
					class="well col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
					<div class="col-xs-3 col-sm-2 col-md-1 col-lg-1">
						<img class="img-circle" width=180 height=180 src="/School/studentimages/prasanna.jpg"></img>
					</div>
					<h2 align="center">Student Details</h2>
					<h3 align="center">ROLLNO: ${student.rollno}</h3>
					<h3 align="center">STUDENT NAME: ${student.name}</h3>
					<h3 align="center">MARKS: ${student.marks}</h3>
				</div>
			</div>
		</div>
	</div>


</body>
</html>