
<html>
<head>
	<title>Login Page</title>
	<link type="text/css" 
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
		  
	<script type="text/javascript">
		function validate() {
			<%
			String user = request.getParameter("username");
			String password = request.getParameter("password");
			
			if (user == "admin" && password == "Password123") { %>
				return true;
				<% response.sendRedirect("customer/list"); 
			}
			%>
		}
	</script>
</head>

<body>
	
<div id="wrapper">
	<div id="header">
		<h2>Subscriber Membership Management</h2>
	</div>
</div>
	
<div id="container">
		<h3>Admin Login</h3>
		
		<form name="userForm" method="get" action="customer/list" onsubmit="return validate()" >
			
			<table>
				
					<tr>
						<td><label>User name:</label></td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td><label>Password:</label></td>
						<td><input type="text" name="password" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" /></td>
					</tr>
				
			</table>
		</form>
		
		<h3>User Login</h3>
		
		<form action="login-user.jsp" method="post">
			<table>
				
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" /></td>
					</tr>
				
			</table> 
		</form>
	</div>
	
	
</body>
</html>
