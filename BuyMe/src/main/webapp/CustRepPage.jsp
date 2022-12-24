
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<center>
<style>
body {
background-color: #FF7979;
font-family: Helvetica, sans-serif;
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Customer Representative Account</title>
</head>

<body>							  

<h1>Customer Representative Control</h1>
<br>

<b>Welcome to the customer representative panel! Please make a selection from one of the following options.</b>
<br>
<br>
Browse the forums:
<br>
<br>
	<form method="post" action="forum.jsp">
	<input type="submit" value="Browse">
	</form>
<br>


Update a user account:
<br>
<br>
	<form method="post" action="updateAccount.jsp">
	<input type="submit" value="Update account">
	</form>
<br>



Remove an auction:
<br>
<br>
	<form method="post" action="sellerAuctionListing.jsp">
	<input type="submit" value="Remove auction">
	</form>
<br>

Log out and return to main page:
<br>
<br>
	<form method="post" action="logOut.jsp">
	<input type="submit" value="Logout">
	</form>
<br>


</center>
</body>
</html>