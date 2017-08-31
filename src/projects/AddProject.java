package projects;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddProject")
public class AddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// JDBC driver name and database URL
	    String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    String DB_URL="jdbc:mysql://localhost/employee_portal";
	    
	    HttpSession session=request.getSession(false);
		String emp_id=(String)session.getAttribute("emp_id");
		String topic = request.getParameter("Topic");
		String description = request.getParameter("description");
	
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
	         String query = "Insert into projects values("+emp_id+",'"+topic+"','"+description+"','N',null,null)";
	        
	         stmt.executeUpdate(query);
	         request.getRequestDispatcher("viewProjects.jsp").forward(request, response);
	     }
	     catch(Exception e){
	    	 
	     }
	}
}
