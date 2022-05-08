<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Premium Page</title>
</head>
<body>
	<h2 style="background:red; color:white;">Welcome ${param["username"]}</h2>
	<p>You have Premium Membership</p>
	<br/>
	<a href="/web-customer-tracker/index.jsp" style="color:white; background:red;">Log out</a>
</body>
</html>