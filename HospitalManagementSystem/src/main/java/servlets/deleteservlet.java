package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.studentdb;
import services.studentservice;
@WebServlet("/delete")
public class deleteservlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pinnum = req.getParameter("pinnum");
		studentservice service = new studentservice(studentdb.conn());
		boolean f = service.deletestudent(pinnum);
		if(f) {
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("welcome.jsp");
		}
		
		}
}
