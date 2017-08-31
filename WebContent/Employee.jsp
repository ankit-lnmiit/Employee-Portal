<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	//HttpSession session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	Integer value = (Integer)session.getAttribute("value");
	if(value==1){
		%><jsp:forward page="login.jsp" />
		<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
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
<b style="color: blue">Welcome <% out.println(n);%>!</b><br>

	<div class="jumbotron "style="height: 350px; background-image:url('css/images/jumbo.jpg');">
  		<div class="list-group">
			<div class="col-md-3">
				<a href="ProfileServelet" class="list-group-item">View profile</a>
				<a href="leaveApply.jsp" class="list-group-item">Leave Apply</a>
				<a href="viewLeave.jsp" class="list-group-item">View Leaves</a>
				<a href="Projects.jsp" class="list-group-item">Add Projects</a>
				<a href="viewProjects.jsp" class="list-group-item">View Projects</a>
			</div>
		</div>
	
			<div class="col-md-9"></div>
	</div>
</body>
</html>