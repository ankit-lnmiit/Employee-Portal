package validation;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServelet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
	    //PrintWriter out = response.getWriter();
	    
	    
	    String user=request.getParameter("emp_id");  
	    String pass=request.getParameter("password");
	    
	    int value=authentication.login(user,pass);
	    
		if(value==1||value==2)
		{ 
			HttpSession session=request.getSession();  
			String name = authentication.getName(user);
	        session.setAttribute("user",name);
	        session.setAttribute("emp_id",user);
	        session.setAttribute("value",value);
			request.getRequestDispatcher("Welcome.jsp").forward(request, response);
		//<jsp:forward page="WelcomeAdmin.jsp" /><% 
		}
//		else if(value==2)
//		{
//			HttpSession session=request.getSession();
//			String name = authentication.getName(user);
//	        session.setAttribute("user",name);
//	        session.setAttribute("emp_id",user);
//			request.getRequestDispatcher("Welcome.jsp").forward(request, response);
//		//<jsp:forward page="WelcomeEmployee.jsp" /><%
//		}
		else if(value==3&&user!=null&&pass!=null)
		{
			request.getRequestDispatcher("login_again.jsp").forward(request, response);
		//<jsp:forward page="login_again.jsp" /><%
		}
	}

}
