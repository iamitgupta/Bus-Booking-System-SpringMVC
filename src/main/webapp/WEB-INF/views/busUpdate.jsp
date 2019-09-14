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
	}else{
		response.sendRedirect("./login");
	}
%>

	<h1 align=center>Search Bus to Update</h1>
	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./searchBusUpdate" method="post"">
				<label for="busId">Enter Bus ID</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busId" >
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block" value="Search Bus">Search Bus</button>
				</div>
			</form>
			
		</div>

	</div>

	<br>
	
	
	<h1 align=center>Update Bus</h1>
	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./busUpdate" method="post"">
				<label for="busid">Enter Bus ID to Update Details</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busid" value="${bus.getBusId()}" >
				</div>
				<label for="busname">Enter Bus Name</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busname"value="${bus.getBusname()}" required>
				</div>
				<label for="bustype">Enter Bus Type (AC/Non-AC)</label>
				<div class="form-group">
					<input type="text" class="form-control" name="bustype" value="${bus.getBusType()}" required>
				</div>
				<label for="source">Enter Pick-Up Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="source" value="${bus.getSource()}" required>
				</div>
				<label for="destination">Enter Drop Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="destination" value="${bus.getDestination()}" required>
				</div>
				<label for="totalseats">Enter TotalSeats</label>
				<div class="form-group">
					<input type="text" class="form-control" name="totalseats" value="${bus.getTotalSeats()}" required>
				</div>
				<label for="price">Enter Fare Charges</label>
				<div class="form-group">
					<input type="text" class="form-control" name="price" value="${bus.getPrice()}" required>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block" value="Update Bus">Update Bus</button>
				</div>
			</form>
			
		</div>

	</div>
	<br>

	<h2 align=center>${msg}</h2>
</body>
</html>