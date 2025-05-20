<%@page import="models.student"%>
<%@page import="java.util.List"%>
<%@page import="dbconnection.studentdb"%>
<%@page import="services.studentservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="register.jsp">
		<button>REGISTER</button>
	</a>
	<table border=1>
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
			studentservice service = new studentservice(studentdb.conn());
			List<student> st = service.fetchall();
			for (student s : st) {
			%>
			<tr>
				<td><%=s.getPinnum()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getEmail()%></td>
				<td><%=s.getBranch()%></td>
				<td>
				<a href="update.jsp?pinnum=<%=s.getPinnum()%>">
					<button>UPDATE</button>
				</a>
					<a href="delete?pinnum=<%=s.getPinnum()%>">
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