<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.text.*"%> 
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
		String laptopname = request.getParameter("laptopname");
		String os = request.getParameter("os");
		String processor = request.getParameter("processor");
		String display = request.getParameter("display");
		String ram = request.getParameter("ram");
		String graphicscard = request.getParameter("graphicscard");
		String harddrive = request.getParameter("harddrive");
		String battery = request.getParameter("battery");
		String deviceid = request.getParameter("deviceid");
		String productid = request.getParameter("productid");
		String endDate = request.getParameter("date");
		SimpleDateFormat s = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date endingDate = s.parse(endDate);
		int secretminprice = Integer.valueOf(request.getParameter("secretminprice"));
		int initialprice = Integer.parseInt(request.getParameter("initialprice"));
		int bidincrement = Integer.parseInt(request.getParameter("bidincrement"));
		int currentBid = 0;
		//insert the auction into database table maybe
		stmt.executeUpdate("insert into laptop values('" + username + "', '" + laptopname + "', '" + os + "', '" + processor + "', '" + display + "', '" + ram + "', '" + graphicscard + "', '" + harddrive + "', '" + battery + "', '" + deviceid + "', '" + productid + "', '" + secretminprice + "', '" + initialprice + "', '" + bidincrement + "', '" + endDate + "', '" + currentBid + "')");	
		//then we redirect to another page probably to show html form
		response.sendRedirect("sellerAuctionListing.jsp");
		
%>
</body>
</html>