<%@page import="com.dev.bbs.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Search Bus</title>
</head>
<body>

	<%
		User user = (User) session.getAttribute("user");
		String nav = null;
		if (user != null) {
			nav = "userNavbar.jsp";
		} else {
			nav = "adminNavbar.jsp";
		}
	%>

	<jsp:include page="<%=nav%>" />

	<br>
	<h1 align=center>Search Bus</h1>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./searchBus" method="post"">
				<label for="busId">Bus ID</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busId">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Search Bus">Search Bus</button>

				</div>
			</form>
		</div>

	</div>

	<h1 align=center>${bus}</h1>
</body>
</html>