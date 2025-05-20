package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.studentdb;
import services.DoctorService;

@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int id = Integer.parseInt(request.getParameter("id"));
		 
		 DoctorService serv = new DoctorService(studentdb.conn());
			HttpSession session = request.getSession();
			
			if(serv.deleteDoctor(id))
			{
				session.setAttribute("succMsg", "Doctor Deleted Successfully..");
				response.sendRedirect("admin/view_doctor.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Went Wrong");
				response.sendRedirect("admin/view_doctor.jsp");
			}
	}

}
