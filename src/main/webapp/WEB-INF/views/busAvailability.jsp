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
		out.print("<h1 align=center>Check Bus Availabilty</h1>");
	}else{
		response.sendRedirect("./login");
	}
%>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./checkAvaialability" method="post"">
				<label for="source">Enter Pick-Up Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="source" >
				</div>
				<label for="destination">Enter Drop Point</label>
				<div class="form-group">
					<input type="text" class="form-control" name="destination" >
				</div>
				<label for="journeyDate">Enter Journey Date (yyyy-mm-dd)</label>
				<div class="form-group">
					<input type="text" class="form-control" name="journeyDate" >
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block" value="Check Bus Availability">Check Bus Availability</button>
				</div>
			</form>
			
		</div>

	</div>
	<h1 align=center>List of Availability</h1>
	<h1 align=center>${avaiList}</h1>
</body>
</html>