<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Student</title>
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
		<h3>Add Student</h3>
		
		<form action="StudentControllerServlet" method="POST">
			<input type="hidden" name="command" value="ADD">
			
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><input type="text" name="firstName"></td>
					</tr>
					<tr>	
						<td><label>Last Name:</label></td>
						<td><input type="text" name="lastName"></td>
					</tr>
					<tr>	
						<td><label>Email:</label></td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>	
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save btn btn-dark"></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div>
			<p><a href="StudentControllerServlet" class="text-primary text-decoration-none">Back to list</a></p>
		</div>
	</div>
</body>
</html>