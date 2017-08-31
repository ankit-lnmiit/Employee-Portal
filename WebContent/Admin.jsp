<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	//HttpSession session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	Integer value = (Integer)session.getAttribute("value");
	if(value==2){
		%><jsp:forward page="login.jsp" />
		<%
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
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

<b style="color: blue; text-align:center" >Welcome <% out.println(n);%>!</b>
	
	<div class="jumbotron "style="height: 360px; background-image:url('css/images/jumbo.jpg');"><br>

  		<div class="list-group">
			<div class="col-md-3">
				<a href="ProfileServelet" class="list-group-item">View</a>
				<a href="addEmployee.jsp" class="list-group-item">Add Member</a>
				<a href="grantLeave.jsp"class="list-group-item">Leave</a>
				<a href="allProjects.jsp" class="list-group-item">Projects</a>
				<a href="viewall.jsp" class="list-group-item">Employee List</a>
			</div>
		</div>
	
			<div class="col-md-9"></div>
	</div>


</body>
</html>