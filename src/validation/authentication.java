package validation;
//import java.util.*;
import java.sql.*;


public class authentication{
	
	public static int login(String user,String pass){
		
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
	         String query = "SELECT password,Category from users where emp_id ="+user;
	        
	         ResultSet rs = stmt.executeQuery(query);
	          
	         if(rs.next())
	         {
	        	 String ans1 = rs.getString("password");
	        	 String ans2 = rs.getString("Category");
	        	 
	        	 if(pass.equals(ans1)&&ans2.equals("Admin")){
	        		 return 1;
	        	 }
	        	 else if(pass.equals(ans1)&&ans2.equals("Employee")){
	        		 return 2;
	        	 }
	        	 else
	        		 return 3;
	        		 
	         }
	         else
	         {
	        	 return 3;
	         }
	         
	     }
	     catch(Exception e){
	    	 return 3; 
	     }
	     
     
	}
	
	public static String getName(String emp_id){
		
	
			String JDBC_DRIVER="com.mysql.jdbc.Driver";  
		    String DB_URL="jdbc:mysql://localhost/employee_portal";
		
		    //  Database credentials
		    String db_user = "root";
		    String db_pass = "ankit9900";
	     
		    //String id=Integer.toString(emp_id);
		    String ans1,ans2,name;
		
		    try{
			         // Register JDBC driver
			         Class.forName(JDBC_DRIVER);
			
			         // Open a connection
			         Connection con = DriverManager.getConnection(DB_URL,db_user, db_pass);
			
			         // Execute SQL query
			         Statement stmt = con.createStatement();
			         String query = "Select first_name,last_name from common where id="+emp_id;
			        
			         ResultSet rs = stmt.executeQuery(query);
			         
			         if(rs.next())
			         {
			        	 ans1 = rs.getString("first_name");
			        	 ans2 = rs.getString("last_name");
			        	 name= ans1+" "+ans2;
			        	 return name;
			         }
			         else
			        	 return null;			         
	
		    }
		    catch(Exception e){
		    	return null;
		    }
}
	
	public static boolean  changePass(String user, String old_pass, String new_pass){
		
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
		         String query1 = "Select password from users where emp_id="+user;
		         String query2 = "Update users set password='"+new_pass+"' where emp_id="+user;
		         
		         ResultSet rs =stmt.executeQuery(query1);
		         rs.next();
		         
		         if (old_pass.equals(rs.getString("password"))){
		        	 stmt.executeUpdate(query2); 
		        	 return true;
		         }
		         else
		        	 return false;
		         
		
		
	    }
	    catch(Exception e){
	    	return false;
	    }
	
	}
	
}