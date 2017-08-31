<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	//HttpSession session=request.getSession(false);  
	String n=(String)session.getAttribute("user");
	%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Leaves</title>
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
	
			<div class="col-md-9">

<%
// JDBC driver name and database URL
	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    String DB_URL="jdbc:mysql://localhost/employee_portal";
	    String emp_id=(String)session.getAttribute("emp_id");
	
	    //  Database credentials
	     String db_user = "root";
	     String db_pass = "ankit9900";     
	
	     try{
	         // Register JDBC driver
	         Class.forName(JDBC_DRIVER);
	
	         // Open a connection
	         Connection con = DriverManager.getConnection(DB_URL,db_user, db_pass);
	
	         // Execute SQL query
	         Statement stmt = con.createStatement();
	         String query = "select * from leaves where emp_id="+emp_id;
	         ResultSet rs = stmt.executeQuery(query);%>
	         
	         <table border="2" >
	         <caption>Leaves History</caption>
	         <tr>
	             <th cellpadding="20";>Purpose</th>
	             <th>From Date</th>
	             <th>To Date</th>
	             <th>Status</th>
	         </tr>
	         
	         
	         <% while(rs.next()){
	        	 %>
	        	 <tr>
	             <td><%=rs.getString("purpose")%></td>
	             <td><%=rs.getString("from_date")%></td>
	             <td><%=rs.getString("to_date")%></td>
	             <td><%=rs.getString("Status")%></td>
	             
	             
	         </tr>
	        	
	        	 
	        	 
	        	 
	         <% }
	     }
	     catch(Exception e){
	    	 
	     }
%>
 
</table>
</div>
	</div>
<a href="Welcome.jsp" style="margin-left:5%; margin-top:25%;">Back</a>
</body>
</html>