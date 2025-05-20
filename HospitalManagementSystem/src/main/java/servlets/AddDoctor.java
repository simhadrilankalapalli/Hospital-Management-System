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


@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {
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
			
			Doctor d = new Doctor(fullName, dob, qualification, specialist, email, mobNo, password);
			
			DoctorService serv = new DoctorService(studentdb.conn());
			HttpSession session = request.getSession();
			
			if(serv.registerDoctor(d))
			{
				session.setAttribute("succMsg", "Doctor Added Successfully..");
				response.sendRedirect("admin/doctor.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Went Wrong");
				response.sendRedirect("admin/doctor.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
