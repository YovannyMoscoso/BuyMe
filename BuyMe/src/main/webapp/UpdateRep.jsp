<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User creation</title>
</head>
<body>
Successfully updated the user info!
<%

		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();
		/* //Create a SQL statement
		Statement stmt = con.createStatement(); */
		//Get parameters from the HTML form at the HelloWorld.jsp
		/* String newName = request.getParameter("modifyUsername");
		String newPW = request.getParameter("modifyPassword");
		String newPhoneNum = request.getParameter("newPhoneNumber"); */
		//String newAddress = request.getParameter("UserAddress");
		/* String street = request.getParameter("Street"); */
		/* String city = request.getParameter("City");
		String state = request.getParameter("State");
		String zip = request.getParameter("ZIP"); */
		/* String newAddress = street + "," + city + "," + state + "," + zip; */
		
		//Make an insert statement for the User table:
		String update = "Update users Set username = ?, password = ? where username = ?";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
/* 		PreparedStatement ps = con.prepareStatement(update);
 */		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		/* ps.setString(1, newName);
		ps.setString(2, newPW); */
		
		
		//Run the query against the DB
/* 		ps.executeUpdate();
 */		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("You have successfully created a new account!");
		out.print("\n Click <a href=loginFormHTML.jsp>Here</a> to login");
%>

</body>
</html>