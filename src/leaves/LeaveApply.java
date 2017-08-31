package leaves;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LeaveApply
 */
@WebServlet("/LeaveApply")
public class LeaveApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String emp_id=(String)session.getAttribute("emp_id");
		//System.out.println(emp_id);
		String purpose=request.getParameter("purpose");  
		String from_date=request.getParameter("from_date");
		String to_date=request.getParameter("to_date");
		
		//Leave.applyLeave(emp_id,purpose,from_date,to_date);
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
		request.getRequestDispatcher("viewLeave.jsp").forward(request, response);
	}

}
