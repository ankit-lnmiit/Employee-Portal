package users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Admin extends user{
	
	
	final static String category = "Admin";
	
	Admin(String emp_id){
		this.emp_id=emp_id;
	}
	Admin(String emp_id, String first_name, String last_name, String dob, String gender, String blood_group,String hire_date,String contact, String position,String office_no,String pass){
		this.emp_id =emp_id;
		this.first_name =first_name;
		this.last_name = last_name;
		this.dob =dob;
		this.gender= gender;
		this.blood_group=blood_group;
		this.hire_date=hire_date;
		this.contact=contact;
		this.position=position;
		this.office_no=office_no;
		this.pass=pass;
	}
	
	public void getDetails2(){
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
	         String query = "SELECT * from admin where admin_id ="+emp_id;
	         
	         ResultSet rs = stmt.executeQuery(query);
	         
	         if(rs.next())
	         {
	        	 position = rs.getString("position");
	        	 office_no = rs.getString("office_no");  	 
	         }
	         
	    }
	    catch(Exception e){
	    	
	    }
	}
	
	
	

}
