<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/allProjects_style.css">
<title>Project List</title>
</head>
<body>
<%
	// JDBC driver name and database URL
	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    String DB_URL="jdbc:mysql://localhost/employee_portal";
	    int i=0;
	    String[] emp=new String[50];
	    
		String admin_id=(String)session.getAttribute("emp_id");
	
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
	         String query = "SELECT * from projects";
			 
	         
	         ResultSet rs = stmt.executeQuery(query);
	         
	         %>
	         
	         <table>
	         <tbody>
	         <caption>Project List</caption>
	         <tr>
	         	 <th>Employee ID</th>
	             <th>Topic</th>
	             <th>Description</th>
	             <th>Status</th>
	             <th>Remarks</th>
	             
	         </tr>
	         
	        <% while(rs.next())
	         {
	        	 String temp=rs.getString("Evaluated");
	        	 String temp2=rs.getString("Topic");
	        	 emp[i]=rs.getString("emp_id");%>
	         <tr>
	        	 
	        	 <td><%=rs.getString("emp_id")%></td>
	        	 <td><%=rs.getString("Topic")%></td>
	        	 <td><%=rs.getString("project")%></td>
	        	 <td><%=rs.getString("Evaluated")%></td>
	        	 <td><%=rs.getString("remarks")%></td>
	        	 
	        	
	        	 <%if(temp.equals("N")){ %><td><a href=EvaluateProject?emp_id=<%=emp[i]%>&remark=Poor&topic=<%=temp2%>>Poor</a><a>  </a><a href=EvaluateProject?emp_id=<%=emp[i]%>&remark=Good&topic=<%=temp2%>>Good</a></td><%}
	             else {} %>
	        	 
	        	 
	        	 
	        </tr>
	         <%i++;}
	         
	    }
	    catch(Exception e){
	    	
	    } %>
</tbody>
</table>
<a href="Welcome.jsp" style="margin-left:5%; margin-top:25%;">Back</a>
</body>
</html>
