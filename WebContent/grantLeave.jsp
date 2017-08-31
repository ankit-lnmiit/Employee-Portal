<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/grantLeave_style.css">
<title>Leave List</title>
</head>
<body>
<%
// JDBC driver name and database URL
	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    String DB_URL="jdbc:mysql://localhost/employee_portal";
	    int i=0;
	    String[] emp=new String[50];
	
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
	         String query = "select emp_id,first_name,purpose,from_date,to_date,status from leaves join common where emp_id=id";
	         ResultSet rs = stmt.executeQuery(query);%>
<table>
	<tbody>
	         	<caption>Leaves List</caption>
	         <tr>
	         	 <th>Emp_id</th>
	         	 <th>Name</th>
	             <th>Purpose</th>
	             <th>From Date</th>
	             <th>To Date</th>
	             <th>Status</th>
	             <th>Grant</th>
	         </tr>
	         
	         
	     <% while(rs.next()){
	        	 String temp=rs.getString("status");
	        	 emp[i]=rs.getString("emp_id");%>
	  	 <tr>
	        	 <td><%=rs.getString("emp_id")%></td>
	             <td><%=rs.getString("first_name")%></td>
	             <td><%=rs.getString("purpose")%></td>
	             <td><%=rs.getString("from_date")%></td>
	             <td><%=rs.getString("to_date")%></td>
	             <td><%=rs.getString("status")%></td>
	             <%if(temp.equals("No")){ %><td><a href=GrantLeave?emp_id=<%=emp[i] %>>Grant</a></td><%}
	             else {%><td></td><%} %>
	     </tr>
	        	 
	        	 
	        	 
	        	 
	         <%i++; }
	     }
	     catch(Exception e){
	     }
%>
</tbody>
 </table>
</body>
</html>
