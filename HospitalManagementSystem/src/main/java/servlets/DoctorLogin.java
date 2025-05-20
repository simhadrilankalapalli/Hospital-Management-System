package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.studentdb;
import models.Doctor;
import models.student;
import services.DoctorService;
import services.studentservice;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String email = request.getParameter("email");
         String password = request.getParameter("password");
         
         HttpSession session = request.getSession();

         DoctorService doc = new DoctorService(studentdb.conn());

          Doctor doctor= doc.login(email, password);

         if (doctor != null) {
             session.setAttribute("doctObj", doctor);
             RequestDispatcher rd = request.getRequestDispatcher("doctor/index.jsp");
             rd.forward(request, response);
         } else {
             session.setAttribute("errorMsg", "Invalid Email & Password");
             response.sendRedirect("doctorlogin.jsp");
         }
	}

}
