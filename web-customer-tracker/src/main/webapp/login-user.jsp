<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Credential Verifying Page</title>
</head>
<body>
	<%
		try{
			String email = request.getParameter("email");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_customer_tracker","root","root");
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM customer WHERE email=?");
			ps.setString(1,email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String member = rs.getString("type");
				String user = rs.getString("first_name");
				if (member.equals("Basic")) {
					%>
					<jsp:forward page="basic-user.jsp" >
						<jsp:param value="<%= user %>" name="username"/>
					</jsp:forward>
					<%
					
				}
				else if (member.equals("Prime")) {
					%>
					<jsp:forward page="prime-user.jsp">
						<jsp:param value="<%= user %>" name="username"/>
					</jsp:forward>
					<%
				}
				else if (member.equals("Premium")) {
					%>
					<jsp:forward page="premium-user.jsp">
						<jsp:param value="<%= user %>" name="username"/>
					</jsp:forward>
					<%
				}
				else {
					%>
					<jsp:forward page="index.jsp">
						<jsp:param value="Error" name="error"/>
					</jsp:forward>
					<%
				}
			}
			else {
				%>
				<jsp:forward page="index.jsp">
					<jsp:param value="Error" name="error"/>
				</jsp:forward>
				<%
			}
		}
		catch (Exception e) {
			out.println("Something went wrong");
		}
			
	%>
</body>
</html>