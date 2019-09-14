<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Booking System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./user/userHome">
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="User Home Page">User Home Page</button>

				</div>
			</form>
		</div>

	</div>

	<br>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./admin/adminHome">
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Admin Home Page">Admin Home Page</button>

				</div>
			</form>
		</div>

	</div>
	
	
	
		
</body>
</html>