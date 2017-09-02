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
</head>
<body>
<div class="container">
<br>
	<div class="well well-sm"><h3 align="center"> Student List</h3></div>
  

	<table class='table table-striped' border = 1 width=400 cellpadding="10" align="center">
		<tr>
			<th>Roll No</th>
			<th>Name</th>
			<th>Marks</th>
			<th>Delete</th>
		</tr>
	
	<c:forEach var="student" items="${Students}">
	
		<tr>
			<td><a href="http://localhost:8080/School/StudentServlet?RollNo=${student.rollno}">${student.rollno}</a></td>
			<td>${student.name}</td>
			<td>${student.marks}</td>
			<td><a href="http://localhost:8080/School/DeleteServlet?RollNo=${student.rollno}">delete</a></td>
		</tr>
	</c:forEach>
	</table>
			<br>
			<h3 align="center"><a href="http://localhost:8080/School/Insertdetails.jsp">Click Here </a> to create new student details.</h3>
			
			 <div class="container" align="center">
        <h3 font-type="italic"><a href="http://localhost:8080/School/Avanthi.jsp"><mark>Back to Main Page</mark></a></h3>
        
        </div> 
        
        <style>
  
  body {
  background-color:darkgrey;
  }
 
 </style>
</body>
</html>