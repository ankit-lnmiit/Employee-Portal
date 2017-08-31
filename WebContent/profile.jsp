<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="users.*"  %>
<%@ page import="validation.*"  %>

<% 
	//HttpSession session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	Integer value = (Integer)session.getAttribute("value");
	Admin a;
	employee e;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	//HttpSession session=request.getSession(false);
	
	
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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
			<!--div class="col-sm-3"-->
				<!--a href="Discussion.jsp" button type="button" class="btn ">Discussion</button></a-->
			<!--/div-->
			<div class="col-sm-2">
				<a href="name.jsp" button type="button" class="btn btn-success"><%out.println(n);%></button></a>
			</div>    		
  			
		</div>
	</header><hr></hr>
	<div class="jumbotron" style="height: 350px; background-image:url('css/images/jumbo.jpg');">
		<% if(value==2){%><div class="list-group">
			<div class="col-md-3">
				<a href="ProfileServelet" class="list-group-item">View profile</a>
				<a href="leaveApply.jsp" class="list-group-item">Leave Apply</a>
				<a href="viewLeave.jsp" class="list-group-item">View Leaves</a>
				<a href="Projects.jsp" class="list-group-item">Add Projects</a>
				<a href="viewProjects.jsp" class="list-group-item">View Projects</a>
			</div>
		</div>
		<%}else{ %> <div class="list-group">
			<div class="col-md-3">
				<a href="ProfileServelet" class="list-group-item">View</a>
				<a href="addEmployee.jsp" class="list-group-item">Add Member</a>
				<a href="grantLeave.jsp"class="list-group-item">Leave</a>
				<a href="allProjects.jsp" class="list-group-item">Projects</a>
				<a href="viewall.jsp" class="list-group-item">Employee List</a>
			</div>
		</div>
		<%} %>
		
	
			<div class="col-md-9">
	<table border="4">
	         <caption style="color:#004d00"><strong>Personal Details</strong></caption>
	
	         <tr>
	             <th>First Name</th>
	             <th>Last Name</th>
	             <th>Gender</th>
	             <th>Hire Date</th>
	             <th style="text-align:center"> DOB</th>
	             <th>Blood Group</th>
	             <th style="text-align:center">Contact</th>
	         </tr>
	         
<%
if(value==1){
	a = (Admin)session.getAttribute("admin");%>
	<tr>
	 	<td><%out.println(a.first_name);%></td>
		<td><%out.println(a.last_name);%></td>
		<td><%out.println(a.gender);%></td>
		<td><%out.println(a.hire_date);%></td>
		<td><%out.println(a.dob);%></td>
		<td><%out.println(a.blood_group);%></td>
		<td><%out.println(a.contact);%></td>
	</tr>
	
<%}
else if(value==2){
	e =(employee)session.getAttribute("employee");%>
	<tr>	   
		<td><%out.println(e.first_name);%></td>
		<td><%out.println(e.last_name);%></td>
		<td><%out.println(e.gender);%></td>
		<td><%out.println(e.hire_date);%></td>
		<td><%out.println(e.dob);%></td>
		<td><%out.println(e.blood_group);%></td>
		<td><%out.println(e.contact);%></td>
	</tr>
	
<% }

%>
</table>
<table border="4">
	         <caption style="color:#004d00"><strong>Company Details</strong></caption>
	         
	         <tr>    
	             <th>Department</th>
	             <th>Position</th>
	             <th>Office/Desk Number</th>
	             
	         </tr>
<%
if(value==1){
	a = (Admin)session.getAttribute("admin");%>
	
	<tr>
		<td>--</td>
		<td><%out.println(a.position);%></td>
		<td><%out.println(a.office_no);%></td>
	</tr>
<%}
else if(value==2){
	e =(employee)session.getAttribute("employee");%>
	
	<tr>	
		<td><%out.println(e.department);%></td>
		<td><%out.println(e.position);%></td>
		<td><%out.println(e.desk_no);%></td>
	</tr>
<% }

%>
</table>
</div>
</div>
</body>
</html>