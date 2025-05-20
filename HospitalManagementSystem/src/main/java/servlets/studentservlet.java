package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.student;
import services.studentservice;
import dbconnection.studentdb;
@WebServlet("/register")
public class studentservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pin = req.getParameter("PIN");
		String name = req.getParameter("NAME");
		String email = req.getParameter("EMAIL");
		String branch = req.getParameter("BRANCH");
		String password = req.getParameter("PASSWORD");
		student stu = new student(pin,name,email,branch,password);
		studentservice ser = new studentservice(studentdb.conn());
		boolean f = ser.addstudent(stu);
		if(f) {
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("error.jsp");
		}
	}

}
