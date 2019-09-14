<%@page import="com.dev.bbs.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




<title>Feedback</title>
</head>
<body>
<jsp:include page="userNavbar.jsp" />
<br>
<% User user = (User)session.getAttribute("user");
	if(user != null){
		out.print("<h1 align=center>Hello " + user.getUsername() +", Please Write Your Feedback</h1>");
	}else{
		response.sendRedirect("./login");
	}
%>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<form action="./writeFeedback" method="post"">
				<label for="feedback">Feedback</label>
				<div class="form-group">
					<input type="text" class="form-control" name="feedback">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-lg btn-block"
						value="Submit Feedback">Submit Feedback</button>

				</div>
			</form>
		</div>

	</div>
	
	<h1 align=center>${msg}</h1>
	
	
	
	
</body>
</html>