<%@page import="com.dev.bbs.beans.Availability"%>
<%@page import="com.dev.bbs.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Ticket</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	<jsp:include page="userNavbar.jsp" />

	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
			out.print("<br>");
			out.print("<h1 align=center>Check Bus Availability</h1>");
		} else {
			response.sendRedirect("./login");
		}
	%>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./checkAvaialability" method="post"">
				<label for="source">Pick-Up Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="source">
				</div>
				<label for="destination">Drop Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="destination">
				</div>
				<label for="journeyDate">Journey Date (yyyy-mm-dd)</label>
				<div class="form-group">
					<input type="text" class="form-control" name="journeyDate">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Check Availability">Check Availability</button>

				</div>
			</form>
		</div>

	</div>
	
	<br>
	<br>
	
	<h1 align=center>List of Bus Availability</h1>
	<h1 align=center>${avaiList}</h1>
	
	<br>
	<br>

	<h1 align=center>Book Bus Tickets</h1>
	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./bookTicket" method="post"">
				<label for="busId">Bus ID</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busId">
				</div>
				<label for="journeyDate">Journey Date (yyyy-mm-dd)</label>
				<div class="form-group">
					<input type="text" class="form-control" name="journeyDate">
				</div>
				<label for="noOfseats">Number of Seats</label>
				<div class="form-group">
					<input type="text" class="form-control" name="noOfseats">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Book Ticket">Book Ticket</button>

				</div>
			</form>
		</div>

	</div>
	
	<br>
	<br>
	<h1 align=center>${state}</h1>


</body>
</html>