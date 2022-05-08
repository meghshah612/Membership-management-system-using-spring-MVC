<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Save Subscriber</title>
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">
		  
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
		  
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Subscriber Membership Management</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Subscriber</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Subscriber Type:</label></td>
						<td><form:input path="type" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<p><a href="${pageContext.request.contextPath}/customer/list">Back to List</a></p>
	</div>

</body>

</html>