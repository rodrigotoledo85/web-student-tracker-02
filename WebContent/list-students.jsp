<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Student Tracker App</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet"> 
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
		<input type="button" class="add-student-button btn btn-dark" value="Add Student" onclick="window.location.href='add-student-form.jsp'; return false;">
			<table class="table table-striped">
				<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				</thead>

				<c:forEach var="tempStudent" items="${STUDENT_LIST}">
					
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
					
					<!-- set up a deleteLink to delete student -->
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
																		
					<tr>
						<td> ${tempStudent.firstName} </td>
						<td> ${tempStudent.lastName} </td>
						<td> ${tempStudent.email} </td>
						<td> 
							<a href="${tempLink}" class="text-warning">Update</a>
							 |
							<a href="${deleteLink}" 
							   class="text-danger" 
							   onclick="if(!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a> 
						</td>
					</tr>
				
				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>