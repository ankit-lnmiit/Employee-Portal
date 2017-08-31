<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/login_again_style.css">
<title>Login</title>
</head>
<body>
<div class="modal-content">
	<div class="container1">
	<h2>Login</h2>
	</div>
	<div class="container2">
		<form action="LoginServlet" method="post">
		<center><p style="color: red">Invalid Username or Password</p></center>
		<label>UserID</label>
		<input type="text" name="emp_id" placeholder="User ID">
		<label>Password</label>
		<input type="password" name="password" placeholder="Password">
		<button type="submit">Login</button>
		</form>
	</div>
</div>
</body>
</html>