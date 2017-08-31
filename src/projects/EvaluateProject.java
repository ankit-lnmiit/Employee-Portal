package projects;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EvaluateProject
 */
@WebServlet("/EvaluateProject")
public class EvaluateProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emp_id=request.getParameter("emp_id");
		String remark=request.getParameter("remark");
		String topic = request.getParameter("topic");
		HttpSession session=request.getSession(false);
		String id=(String)session.getAttribute("emp_id");
		
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
	         String query = "Update projects set Evaluated='Y',Remarks='"+remark+"',admin_id="+id+" where emp_id ="+emp_id+" and Topic='"+topic+"'";
	        
	         stmt.executeUpdate(query);
	         
	         request.getRequestDispatcher("allProjects.jsp").forward(request, response);
	     }
	     catch(Exception e){
	    	 request.getRequestDispatcher("allProjects.jsp").forward(request, response);
	    	 
	     }


	}
}
