<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/viewProjects_style.css">
<title>View Projects</title>
</head>
<body>
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
	         String query = "SELECT Topic,project,Evaluated,remarks from projects where emp_id="+emp_id;
	         
	         ResultSet rs = stmt.executeQuery(query);%>
	         
	         <table>
	         <caption>Project List</caption>
	         <tr>
	             <th>Topic</th>
	             <th>Description</th>
	             <th>Status</th>
	             <th>Remarks</th>
	             
	         </tr>
	         
	        <% while(rs.next())
	         {%>
	         <tr>
	        	 
	        	 <td><%=rs.getString("Topic")%></td>
	        	 <td><%=rs.getString("project")%></td>
	        	 <td><%=rs.getString("Evaluated")%></td>
	        	 <td><%=rs.getString("remarks")%></td>
	        	 
	        	 
	        	 
	        </tr>
	         <%}
	         
	    }
	    catch(Exception e){
	    	
	    } %>

</table>
<br>
<br>
<a href="Welcome.jsp" style="margin-left:5%; margin-top:25%;">Back</a>
</body>
</html>