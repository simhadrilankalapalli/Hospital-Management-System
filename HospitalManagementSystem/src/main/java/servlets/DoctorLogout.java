package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doctorLogout")
public class DoctorLogout extends HttpServlet {
	
	 @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();
	        session.removeAttribute("doctObj");
	        session.setAttribute("succMsg", "Doctor Logout Successfully");
	        response.sendRedirect("doctorlogin.jsp");
	}


}
