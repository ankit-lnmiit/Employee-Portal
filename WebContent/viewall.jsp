<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/viewall_style.css">
<title>Employee List</title>
</head>
<body>
<%
	// JDBC driver name and database URL
	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    String DB_URL="jdbc:mysql://localhost/employee_portal";
	
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
	         String query = "SELECT * from common join employee where id = emp_id";
	         
	         ResultSet rs = stmt.executeQuery(query);%>
	         
	         <table>
	         <tbody>
	         <caption>Employees List</caption>
	         <tr>
	             <th width="50px">Employee ID</th>
	             <th width="100px">First Name</th>
	             <th>Last Name</th>
	             <th>Date of Birth</th>
	             <th>Gender</th>
	             <th>Hire Date</th>
	             <th width="50px">Blood Group</th>
	             <th width="100px">Contact</th>
	             <th>Position</th>
	             <th>Department</th>
	             <th>Desk No</th>
	         </tr>
	         
	        <% while(rs.next())
	         {%>
	         <tr>
	        	 <td><%=rs.getString("emp_id")%></td>
	        	 <td><%=rs.getString("first_name")%></td>
	        	 <td><%=rs.getString("last_name")%></td>
	        	 <td><%=rs.getString("dob")%></td>
	        	 <td><%=rs.getString("gender")%></td>
	        	 <td><%=rs.getString("hire_date")%></td>
	        	 <td><%=rs.getString("blood_group")%></td>
	        	 <td><%=rs.getString("contact")%></td>
	        	 <td><%=rs.getString("position")%></td>
	        	 <td><%=rs.getString("department")%></td>
	        	 <td><%=rs.getString("desk_no")%></td>
	        	 
	        </tr>
	         <%}
	         
	    }
	    catch(Exception e){
	    	
	    } %>
</tbody>
</table>
<a href="Welcome.jsp" style="margin-left:5%; margin-top:25%;">Back</a>


</body>
</html>