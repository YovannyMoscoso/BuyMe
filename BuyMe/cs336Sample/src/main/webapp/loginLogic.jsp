<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();
		
		ResultSet rs;
		rs = stmt.executeQuery("select * from users where username = '" + username + "' and password = '" + password + "'");
		if(rs.next()) //if user and password exists
		{
			
				session.setAttribute("username", username);
				response.sendRedirect("loggedIn.jsp"); //redirect to the loggedIn page
			
		}
		else //if the username doesn't exist, have the user type in the correct user and password or make an account
		{
			out.println("Password is incorrect. <a href='loginFormHTML.jsp'> Enter again </a>");
			out.println("If you don't have an account, make an account here. <a href='makeAccountHTML.jsp'> Register an account. </a>");
		}

%>
		
</body>
</html>