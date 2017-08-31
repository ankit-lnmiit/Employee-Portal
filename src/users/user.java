package users;
//import java.io.File;
//import java.awt.image.*;
//import javax.imageio.ImageIO;
//import java.awt.image.BufferedImage;
//import java.util.*;
//import java.awt.*;
//import java.io.*;
import java.sql.*;

public class user {
	public String emp_id;
	public String first_name;
	public String last_name;
	public String dob;
	public String gender;
	public String blood_group;
	public String hire_date;
	public String contact;
	public String position;
	public String pass;
	public String office_no;
	public String department;
	public String desk_no;
	
	public void getDetails1(){
		
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
	         String query = "SELECT * from common where id ="+emp_id;
	         
	         ResultSet rs = stmt.executeQuery(query);
	         
	         if(rs.next())
	         {
	        	 first_name = rs.getString("first_name");
	        	 last_name = rs.getString("last_name");
	        	 dob = rs.getString("dob");
	        	 gender = rs.getString("gender");
	        	 hire_date = rs.getString("hire_date");
	        	 blood_group = rs.getString("blood_group");
	        	 contact = rs.getString("contact");	        	       	 
	         }
	         
		
	     }
	    catch(Exception r){
	    	 
	     }
	    	 
	}
	
	public void addMember(user a,String category){}
	
}
