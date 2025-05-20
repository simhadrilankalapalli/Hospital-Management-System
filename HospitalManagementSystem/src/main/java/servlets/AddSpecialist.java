package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.studentdb;
import services.SpecialistService;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String specName = request.getParameter("specName");
		
		SpecialistService service = new SpecialistService(studentdb.conn());
		boolean f = service.addSpecialist(specName);
		
		HttpSession session = request.getSession();
		
		if(f) {
			session.setAttribute("succMsg", "Specialist Added");
			response.sendRedirect("admin/index.jsp");
		}
		else {
			session.setAttribute("errorMsg", "something went wrong");
			response.sendRedirect("admin/index.jsp");
		}
	}

}
