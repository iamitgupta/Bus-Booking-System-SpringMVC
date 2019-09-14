<%@page import="com.dev.bbs.beans.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<jsp:include page="adminNavbar.jsp" />

<% Admin admin = (Admin)session.getAttribute("admin");
	if(admin != null){
		out.print("<br>");
		out.print("<h1 align=center>Get Booked Tickets</h1>");
	}else{
		response.sendRedirect("./login");
	}
%>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./getBookedTicket" method="post">
				<label for="busId">Enter Bus ID</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busId" required>
				</div>
				<label for="date">Enter Booked Ticket Date</label>
				<div class="form-group">
					<input type="text" class="form-control" name="date" required>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Get Result">Get Result</button>

				</div>
			</form>
		</div>

	</div>

	<h1 align="center">List of Tickets</h1>
	<h1 align="center">${ticketList}</h1>
</body>
</html>