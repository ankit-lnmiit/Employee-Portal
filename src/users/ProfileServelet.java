package users;

//import validation.LoginServlet;
import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProfileServelet
 */
@WebServlet("/ProfileServelet")
public class ProfileServelet extends HttpServlet {
	public static final long serialVersionUID = 1L;
       
    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession(false);
		String n=(String)session.getAttribute("emp_id");
		Integer value = (Integer)session.getAttribute("value");
		Admin a;
		employee e;
		if(value==1){
			a=new Admin(n);
			a.getDetails1();
			a.getDetails2();
			session.setAttribute("admin",a);
		}
		else if(value==2){
			e=new employee(n);
			e.getDetails1();
			e.getDetails2();
			session.setAttribute("employee",e);
		}
		
		
		request.getRequestDispatcher("profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
