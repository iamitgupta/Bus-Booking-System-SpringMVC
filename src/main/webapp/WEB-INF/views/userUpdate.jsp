<%@page import="com.dev.bbs.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data</title>
</head>
<body>
<jsp:include page="userNavbar.jsp" />

	<!-- Update Profile -->
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
			out.print("<br><br>");
			out.print("<h1 align=center>Update User " + user.getUsername() + " Profile</h1>");
		} else {
			out.print(user);
			 response.sendRedirect("./login"); 
		}
	%>
	
	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./userUpdate" method="post"">
				<label for="userId">User Id</label>
				<div class="form-group">
					<input type="text" class="form-control" name="userId" disabled="disabled" value="${user.getUserId()}">
				</div>
				<label for="password">Password</label>
				<div class="form-group">
					<input type="password" class="form-control" name="password" value="${user.getPassword()}">
				</div>
				<label for="userName">Name</label>
				<div class="form-group">
					<input type="text" class="form-control" name="userName"  value="${user.getUsername()}">
				</div>
				<label for="email">Email Id</label>
				<div class="form-group">
					<input type="text" class="form-control" name="email" value="${user.getEmail()}">
				</div>
				<label for="contact">Contact</label>
				<div class="form-group">
					<input type="text" class="form-control" name="contact" value="${user.getContact()}">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block" value="Update">Update User</button>
				</div>
			</form>
			
		</div>

	</div>
	<h1 align=center>${msg}</h1>
</body>
</html>