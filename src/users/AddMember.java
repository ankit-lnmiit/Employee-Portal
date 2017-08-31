package users;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddMember
 */
@WebServlet("/AddMember")
public class AddMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		user u;
		String user=request.getParameter("emp_id");
		String category = request.getParameter("category");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String hire_date=request.getParameter("hire_date");
		String blood_group=request.getParameter("blood_group");
		String contact=request.getParameter("contact");
		String department=request.getParameter("department");
		String position=request.getParameter("position");
		String office_no=request.getParameter("office_no");
		String pass=request.getParameter("password");

		if(category.equals("Admin")){
			u= new Admin(user,first_name,last_name,dob,gender,blood_group,hire_date,contact,position,office_no,pass);
		}
		else{
			u= new employee(user,first_name,last_name,dob,gender,blood_group,hire_date,contact,department,position,office_no,pass);
		}
		
		//u.addMember(u,category);
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
	         String query = "Insert into common values("+u.emp_id+",'"+u.first_name+"','"+u.last_name+"',"+"null"+",'"+u.dob+"','"+u.gender+"','"+u.hire_date+"','"+u.blood_group+"','"+u.contact+"')";
	         stmt.executeUpdate(query);
	         
	         String query2 = "Insert into users values("+u.emp_id+",'"+u.pass+"','"+category+"')";
	         stmt.executeUpdate(query2);
	         
	         if(category.equals("Admin"))
	         {
	        	 String query1="Insert into admin values("+u.emp_id+",'"+u.position+"','"+u.office_no+"')";
	        	 stmt.executeUpdate(query1);
	         }
	         else
	         {
	        	 String query1="Insert into employee values("+u.emp_id+",'"+u.department+"','"+u.position+"','"+u.desk_no+"')";
	        	 stmt.executeUpdate(query1);
	         }
	    }
	    catch(Exception e){
	    	System.out.println("error");
	    }
		
		request.getRequestDispatcher("Admin.jsp").forward(request, response);
		  
	}

}
