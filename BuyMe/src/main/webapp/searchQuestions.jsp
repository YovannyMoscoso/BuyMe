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

<b>Questions</b>
<table border="2">
<tr>
<td>Question</td>
<td>Answer</td>
</tr>

<%
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		String question = request.getParameter("question");
		
		String questionQuery = "select * from questions where question like '%"+question+"%'";
		
		ResultSet rs = stmt.executeQuery(questionQuery);
		
		while(rs.next())
		{

		%>
			
		    <tr>
		    <td><%=rs.getString("question") %></td>
		    <td><%=rs.getString("answers") %></td>
			</tr>
			
		  <%

		}
		%>
		</table>
		<% 

%>

</body>
</html>