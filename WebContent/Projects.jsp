<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	//HttpSession session=request.getSession(false);  
	String user=(String)session.getAttribute("user");
	String emp_id=(String)session.getAttribute("emp_id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Projects_style.css">
<title>Projects</title>
</head>
<body>

<!--b style="color: blue">Welcome <% out.println(user);%>!</b-->
<div class="modal-content">
<form action="AddProject" method="post">
	<div class="container">
	<label>Topic</label>
	<input type="text" name="Topic" placeholder="Topic" required>
	<label>Description</label>
	<input type="text" name="description" placeholder="Description" required>
	<button type="submit">Add Project</button>
</div>
</form>
</div>
</body>
</html>