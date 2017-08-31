<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	//HttpSession session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	Integer value = (Integer)session.getAttribute("value");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/changePass_style.css">
<title>Password Change</title>
</head>
<body>
<div class="modal-content">
<form action="ChangePass" method="post">
	<div class="container">
	<label>Current Password</label>
	<input type="password" name="old_pass">
	<label>New Password</label>
	<input type="password" name="new_pass">
	<button type="submit">Change Password</button>
	</div>
</form>
</div>
</body>
</html>