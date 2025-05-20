package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.student;


public class adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
try {
			
			PrintWriter out = response.getWriter();
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Simha123@");
				String n=request.getParameter("username");
				String p=request.getParameter("password");
				PreparedStatement ps = con.prepareStatement("select adminname from adminlogin where adminname=? and password=?");
				ps.setString(1, n);
				ps.setString(2, p);
				ResultSet rs = ps.executeQuery();
				
				HttpSession session = request.getSession();
				
				if(rs.next())
				{
					session.setAttribute("adminObj", new student());
					RequestDispatcher rd = request.getRequestDispatcher("admin/index.jsp");
					rd.forward(request, response);
				}
				else {
					session.setAttribute("errorMsg", "Invalid Email & Password");
					response.sendRedirect("adminlogin.jsp");
			} 
			}
				catch(ClassNotFoundException e) {
					e.printStackTrace();
				}
				catch(SQLException e) {
				e.printStackTrace();
			}
	}
}
