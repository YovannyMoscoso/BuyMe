

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        	<script src="https://kit.fontawesome.com/9c90ba2028.js" crossorigin="anonymous"></script>
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
		if (username.equals("admin")) {
			rs = stmt.executeQuery("select * from admin where username = '" + username + "' and password = '" + password + "'");
			if(rs.next()) {
				session.setAttribute("username", username);
				session.setAttribute("account_type", "Administrator");

				response.sendRedirect("AdminPage.jsp");
			}
		} 
		else {
			rs = stmt.executeQuery("select * from customer_rep where username = '" + username + "' and password = '" + password + "'");
			if(rs.next()) //if user and password exists
			{
				
				session.setAttribute("username", username);
				session.setAttribute("account_type", "Customer Service Representative");

				response.sendRedirect("CustRepPage.jsp"); //redirect to the loggedIn page
					
			} else {
				rs = stmt.executeQuery("select * from user where username = '" + username + "' and userpw = '" + password + "'");
				if(rs.next()) //if user and password exists
				{
					
					session.setAttribute("username", username);
					session.setAttribute("account_type", "End_user");
					response.sendRedirect("CustRepPage.jsp"); //redirect to the loggedIn page
						
				} else //if the username doesn't exist, have the user type in the correct user and password or make an account
				{
					out.println("Password is incorrect. <a href='loginFormHTML.jsp'> Enter again </a>");
					out.println("If you don't have an account, make an account here. <a href='makeAccountHTML.jsp'> Register an account. </a>");
				}

			}
			

		}
		
%>
	        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		
</body>
</html>
		
