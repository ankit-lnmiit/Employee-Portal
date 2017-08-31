<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	//session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background-image:url("css/images/office.jpg");
			background-repeat: no-repeat;
    		background-position: right top;
		}
		
	</style>
</head>
<body>
	<header class="container">
	<br>
		<div class="row ">
			<div class="col-sm-6">
				<img src="css/images/mono1.png">
			</div>
			<!--<div class="btn-group btn-group-lg">-->
			<div class="col-sm-2" >
				<a href="Employee.jsp" button type="button" class="btn ">Employee</button></a>&nbsp;
			</div>
			<div class="col-sm-2">
				<a href="Admin.jsp" button type="button" class="btn ">Admin</button></a>&nbsp;
			</div>
			<div class="col-sm-2">
				<a href="name.jsp" button type="button" class="btn btn-success"><%out.println(n);%></button></a>
			</div>    		
  			
		</div>
	</header><hr></hr>
	<br>
	<section class="container" style="height: 400px">
		<div class="container">
			<div class="row text-center" id="tag"><br><br><br><br><br>
				<h1><b style="color: green">Welcome,</b> <% out.println(n);%>!</h1>
			</div>
					
		</div>
	</section>
		
	<!--<div class="jumbotron">
		<div class="row ">
			
	<nav class="col-sm-8 " >
		<a href="Employee.jsp">Employee</a>
		<a href="Admin.jsp">Admin</a>
		<a href="Discussion.jsp">Discussion</a>
		<a href="name.jsp"><%out.println(n);%></a>
	</nav>
		
	
	</div>
		</div>-->
	
</body>
</html>