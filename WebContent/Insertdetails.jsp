<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sending student details</title>
</head>
<script type="text/javascript">



function check_info(){
	
	
	var rollNo = document.getElementById('rollno').value;
	var Name = document.getElementById('name').value;
	var Marks = document.getElementById('marks').value;
	
	if (rollNo=="" || Name=="" || Marks==""){
		
		alert('Please fill in all fields');
		return false;
		
	}   else if (rollNo<1 || rollNo>120){
		alert('Please Enter Valid Rollno');
		return false;
		
	} 	else if (Name.length<4 || Name.length>16){
		alert('Please Enter valid Name.. Name should be in between 4 to 16 characters');
		return false;
		
	}   else if (Marks<0 || Marks>100){
		alert('Please Enter Valid Marks');
		return false;
	}else {
		return true;
	}

	
	
}
</script>
<body>
	<div class="jumbotron" >
  <div class="page-header text-center" >
	  <h1>Enter Student Details</h1> 
	  <br>
	  <h3><a href="http://localhost:8080/School/StudentsList">Click Here </a>to go back to student details</h3>
	</div>

<div class="container">


	
	<form class="form-horizontal" name="sending student details "action="http:/School/InsertDetailsServlet" method="post" onsubmit="return check_info();">
	
		
		<div class="form-group">
		<label class="control-label col-sm-4" for="rollno">ROLLNO:</label>
		    <div class="col-sm-4">
			    <input type="text" class="form-control" id="rollno" name="rollno">
			     
		    </div>
		    </div>
		    <br><br>
		    	<div class="form-group">
		<label class="control-label col-sm-4" for="name">STUDENT_NAME:</label>
		    <div class="col-sm-4">
			    <input type="text" class="form-control" id="name" name="name">
			 
		    </div>
		    </div>
		    <br><br>
		    	<div class="form-group">
		<label class="control-label col-sm-4" for="marks">MARKS:</label>
		    <div class="col-sm-4">
			    <input type="text" class="form-control" id="marks" name="marks">
			     
		    </div>
		    </div>
		    <br><br>
		    <div class="text-center">
		  	<button  type="submit" class="btn btn-default" >Submit
		  	</button>
	  	</div>
  </form>
</div>
</div>
</body>
</html>