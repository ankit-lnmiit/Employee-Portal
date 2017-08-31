<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
	background-image:url("css/images/office.jpg");
	background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
    }
    
    button {
    background-color: #2e86c1 ;
    color: white;
    padding: 2% 3%;
    margin: 3% 0;
    border: none;
    cursor: pointer;
    width: 30%;
    font-size: 10px;
	}
	
	.modal-content {
    margin: 22% auto 22% 15%; 
    border-radius: 0%;
    width: 30%;
    background-color: rgb(46,204,113);
    padding: 0 0 3% 0; 
    /*background-color: rgba(0,0,0,0.3);*/ 
    
    /*.container {
    /*padding: 3%;*/
   /* width: 100%;
    padding: 2% 2%;
    margin: 3% 0;
    display: inline-block;
    border: 1px solid #ccc;
	}*/
}
</style>	
	
</head>
<body>
<div class="modal-content">
	<div class="container">
		<a href="ProfileServelet"><button type="button" class="btn btn-elegant">View</button></a><br>
		<a href="changePass.jsp"><button type="button" class="btn btn-elegant">Change Password</button></a><br>
		<a href="login.jsp"><button type="button" class="btn btn-elegant">Logout</button></a>
	</div>
</div>
</body>
</html>