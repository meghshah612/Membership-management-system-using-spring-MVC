<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

	<title>List of Subscribers</title>
	<link type="text/css" 
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />			
</head>

<body>

<div id="wrapper">
	<div id="header">
		<h2>Subscriber Membership Management</h2>
	</div>
</div>

<div id="container">

	<div id="content">
	
		<!-- put a button - Add Subscriber -->
		
		<input type="button" value="Add Subscriber"
			   onclick="window.location.href='showFormForAdd'; return false;"
			   class="add-button"
		/>
		
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Subscriber Type</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="tempCustomer" items="${customers}">
			
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>
				
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>
				
				<tr>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td>${tempCustomer.email}</td>
					<td>${tempCustomer.type}</td>
					<td>
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this subscriber?'))) return false">Delete</a>
					</td>
				</tr>
			</c:forEach>
			
		</table>
		<br/>
		<a href="/web-customer-tracker/index.jsp" style="color:white; background:red;">Log out</a>
	</div>

</div>

</body>

</html>