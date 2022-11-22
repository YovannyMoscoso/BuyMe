<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		ResultSet rs;
		rs = stmt.executeQuery("select * from users where username = '" + username + "'");
		
		//if the account already exists we will have them create another acc
		if(rs.next())
		{
			out.println("Username is taken. Try another one. <a href> = 'makeAccount.jsp'></a>");
		}
		else
		{
	
			ResultSet insertUser = stmt.executeQuery("insert into users values('" + username + "', '" + password + "')");
			
			session.setAttribute("username", username);
			response.sendRedirect("loggedIn.jsp");
			
		}
		
%>
</body>
</html>