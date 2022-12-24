<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Modification</title>
</head>
<body>
<h1>Account Modification </h1>
<br>
	<form method="post" action="UpdateRep.jsp">
	<table>
	<tr>    
	<td>Username of account being modified</td><td><input type="text" name="Username"></td>
	</tr>


	<tr>
	<td><b>NOTE:</b> Any changed fields will be modified for the user.
		Any field left empty will NOT be modified.</td>
	</tr>
	

	
	<tr>    
	<td>Username</td><td><input type="text" name="modifyUsername"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="text" name="modifyPassword"></td>
	</tr>
	
	</table>
	
	<input type="submit" value="Modify Account">
	</form>
<br>

<br>
	<form method="post" action="AdminPage.jsp">
	<input type="submit" value="Cancel">
	</form>
<br>
</body>
</html>