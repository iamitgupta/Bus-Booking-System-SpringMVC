<%@page import="com.dev.bbs.beans.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<jsp:include page="adminNavbar.jsp" />
<% Admin admin = (Admin)session.getAttribute("admin");
	if(admin != null){
		out.print("<br>");
		out.print("<h1 align=center>Hello " + admin.getName() +"</h1>");
	}else{
		response.sendRedirect("./login");
	}
%>





</body>
</html>
