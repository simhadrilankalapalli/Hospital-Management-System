package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.studentdb;
import models.student;
import services.studentservice;

@WebServlet("/signup")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            student st = new student(name, email, password);
            studentservice service = new studentservice(studentdb.conn());
            
            HttpSession session = request.getSession();
            
            boolean f = service.signupstudent(st); // Correct method name

            if (f) {
            	
            	session.setAttribute("sucMsg", "Register Successfully");
            	response.sendRedirect("signup.jsp");
            	
                System.out.println("Register successful");
            } 
            
            else {
            	
            	session.setAttribute("errorMsg", "Something wrong on server");
            	response.sendRedirect("signup.jsp");
                System.out.println("Something went wrong");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
