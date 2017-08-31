package functions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Leave {
	
	
	
//	public ResultSet viewMy(String emp_id){
//		// JDBC driver name and database URL
//	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
//	    String DB_URL="jdbc:mysql://localhost/employee_portal";
//	
//	    //  Database credentials
//	     String db_user = "root";
//	     String db_pass = "ankit9900";     
//	
//	     try{
//	         // Register JDBC driver
//	         Class.forName(JDBC_DRIVER);
//	
//	         // Open a connection
//	         Connection con = DriverManager.getConnection(DB_URL,db_user, db_pass);
//	
//	         // Execute SQL query
//	         Statement stmt = con.createStatement();
//	         String query = "select * from leaves where emp_ip="+emp_id;
//	         ResultSet rs = stmt.executeQuery(query);
//	         return rs;
//		
//	     }
//	     catch(Exception e){
//	    	 return null;
//	    	 
//	     }
//	}
	
	public static void applyLeave(String emp_id,String purpose,String from_date,String to_date){
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
	         String query = "Insert into leaves values("+emp_id+",'"+purpose+"','"+from_date+"','"+to_date+"','No')";
	        
	         stmt.executeUpdate(query);
	          
	         //if(rs.next())
	
	         
	     }
	     catch(Exception e){
	    	 
	     }
		
	}
	
	
	
	

}
