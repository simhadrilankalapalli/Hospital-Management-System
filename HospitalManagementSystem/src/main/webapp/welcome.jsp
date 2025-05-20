<%@page import="models.student"%>
<%@page import="java.util.List"%>
<%@page import="dbconnection.studentdb"%>
<%@page import="services.studentservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Management</title>
</head>
<body>
    <a href="register.jsp">
        <button>REGISTER</button>
    </a>
    <table border="1">
        <thead>
            <tr>
                <th>PIN</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>BRANCH</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            <%
            // Initialize the student service with a database connection
            studentservice service = new studentservice(studentdb.conn());

            // Fetch all student records
            List<student> students = service.fetchall();

            // Iterate through the list of students and display their details
            for (student s : students) {
            %>
            <tr>
                <td><%= s.getPinnum() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getBranch() %></td>
                <td>
                    <a href="update.jsp?pinnum=<%= s.getPinnum() %>">
                        <button>UPDATE</button>
                    </a>
                    <a href="delete.jsp?pinnum=<%= s.getPinnum() %>">
                        <button>DELETE</button>
                    </a>
                </td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</body>
</html>
