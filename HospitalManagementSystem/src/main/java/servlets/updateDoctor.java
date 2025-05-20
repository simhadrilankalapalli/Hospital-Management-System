package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.studentdb;
import models.Doctor;
import services.DoctorService;

@WebServlet("/updateDoctor")
public class updateDoctor extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String fullName = request.getParameter("fullname");
			String dob = request.getParameter("dob");
			String qualification = request.getParameter("qualification");
			String specialist = request.getParameter("specialist");
			String email = request.getParameter("email");
			String mobNo = request.getParameter("mobNo");
			String password = request.getParameter("password");
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			Doctor d = new Doctor(id, fullName, dob, qualification, specialist, email, mobNo, password);
			
			DoctorService serv = new DoctorService(studentdb.conn());
			HttpSession session = request.getSession();
			
			if(serv.updateDoctor(d))
			{
				session.setAttribute("succMsg", "Doctor Update Successfully..");
				response.sendRedirect("admin/view_doctor.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Went Wrong");
				response.sendRedirect("admin/view_doctor.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
