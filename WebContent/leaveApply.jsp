<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Apply</title>
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
				<a href="name.jsp" button type="button" class="btn btn-success">name</button></a>
			</div>    		
  			
		</div>
	</header><hr></hr>
	<div class="jumbotron "style="height: 400px; background-image:url('css/images/jumbo.jpg');">
  		<div class="list-group">
			<div class="col-md-3">
				<a href="ProfileServelet" class="list-group-item">View profile</a>
				<a href="leaveApply.jsp" class="list-group-item">Leave Apply</a>
				<a href="viewLeave.jsp" class="list-group-item">View Leaves</a>
				<a href="Projects.jsp" class="list-group-item">Add Projects</a>
				<a href="viewProjects.jsp" class="list-group-item">View Projects</a>
			</div>
		</div>
	
			<div class="col-md-8">
				<!--div class="container"-->
					<h2 text-align:"center">Leave Apply</h2>
  <form action="LeaveApply" method="post">
    
    <div class="form-horizontal">
      <label class="control-label">Purpose</label>
      <input type="text" name="purpose" class="form-control"  placeholder="Purpose">
    </div>
    <div class="form-horizontal">
      <label class="control-label">From Date (YYYY-MM-DD)</label>
      <input type="text" name="from_date" class="form-control" placeholder="from date">
    </div>
    <div class="form-horizontal">
      <label class="control-label">To Date (YYYY-MM-DD)</label>
      <input type="text" name="to_date" class="form-control" placeholder="To date">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
<!--/div-->
				

	
			</div>
	</div>

	
   
</form>
</center>
</body>
</html>