package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.studentdb;
import models.student;
import services.studentservice;
@WebServlet("/update")
public class updateservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pinnum = req.getParameter("pinnum");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String branch = req.getParameter("branch");
		String password = req.getParameter("password");
		student st = new student(pinnum, name, email, branch, password);
		studentservice service = new studentservice(studentdb.conn());
		boolean f = service.updatestudent(st);
		if(f) {
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("welcome.jsp");
		}
	}
}
