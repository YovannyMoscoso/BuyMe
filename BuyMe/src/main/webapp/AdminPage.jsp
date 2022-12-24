
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

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

<title>Admin Account</title>
</head>

<body>							  

<h1>Admin Control Panel</h1>
<br>

<b>Welcome to the admin control panel! Please make a selection from one of the following options.</b>
<br>
<br>
Create a Customer Representative Account:
<br>
<br>
	<form method="post" action="CustRepCreate.jsp">
	<input type="submit" value="Create Account">
	</form>
<br>


Generate sales report:
<br>
<br>
	<form method="post" action="AdminReportPage.jsp">
	<input type="submit" value="Generate Report">
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