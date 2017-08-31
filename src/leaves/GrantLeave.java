package leaves;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GrantLeave
 */
@WebServlet("/GrantLeave")
public class GrantLeave extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String emp_id=request.getParameter("emp_id");
		
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
	         String query = "UPDATE leaves set Status='Yes' where emp_id ="+emp_id;
	        
	         stmt.executeUpdate(query);
	         request.getRequestDispatcher("grantLeave.jsp").forward(request, response);
	     }
	     catch(Exception e){
	    	 request.getRequestDispatcher("grantLeave.jsp").forward(request, response);
	     }
	     
	     

	
	}
}
