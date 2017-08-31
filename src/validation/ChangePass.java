package validation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePass
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String old_pass = request.getParameter("old_pass");
		String new_pass = request.getParameter("new_pass");
		HttpSession session=request.getSession(false);
		String user=(String)session.getAttribute("emp_id");
		
		boolean flag=authentication.changePass(user,old_pass,new_pass);
		
		if(flag==true)
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("changePass.jsp").forward(request, response);
		}
	}

}
