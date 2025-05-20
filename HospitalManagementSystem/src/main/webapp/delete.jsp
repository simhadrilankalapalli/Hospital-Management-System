<%@page import="services.studentservice"%>
<%@page import="dbconnection.studentdb"%>
<%@page import="java.io.IOException"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    String pinnum = request.getParameter("pinnum");
    if (pinnum != null && !pinnum.isEmpty()) {
        studentservice service = new studentservice(studentdb.conn());
        boolean deleted = service.deletestudent(pinnum);
        if (deleted) {
            response.sendRedirect("welcome.jsp"); // Redirect to the main page or list page after deletion
        } else {
            out.println("Failed to delete student");
        }
    } else {
        out.println("Invalid student PIN");
    }
%>
