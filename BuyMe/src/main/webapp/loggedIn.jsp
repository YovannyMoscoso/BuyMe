<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	if(session.getAttribute("username") == null) //if session exists right now currently
	{
		out.println("You are not logged in. ");
		out.println("<a href='loginFormHTML.jsp'> Login </a>");
    }
	else
	{ 
		out.println("Welcome!");
		out.println("<a href='logOut.jsp'> Log Out </a>");
	}
%>


</body>
</html>