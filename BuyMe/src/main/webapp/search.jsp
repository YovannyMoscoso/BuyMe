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

		String searched = request.getParameter("search");
		
		//display by tablet
		if(searched.equals("tablets") || searched.equals("tablet"))
		{
		%>
			<b>Tablets</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Tablet Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Storage</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			
			
		<% 
			String queryTablet ="select * from tablet";
			ResultSet rs = stmt.executeQuery(queryTablet);
		while(rs.next())
		{

		%>
			
		    <tr>
		    <td><%=rs.getString("username") %></td>
		    <td><%=rs.getString("tabletname") %></td>
		    <td><%=rs.getString("os") %></td>
		    <td><%=rs.getString("processor") %></td>
		    <td><%=rs.getString("display") %></td>
		    <td><%=rs.getString("ram") %></td>
		    <td><%=rs.getString("tabletstorage") %></td>
		    <td><%=rs.getString("battery") %></td>
		    <td><%=rs.getString("deviceid") %></td>
		    <td><%=rs.getInt("initialprice") %></td>
		    <td><%=rs.getInt("bidincrement") %></td>
		     <td><%=rs.getInt("currentbid") %></td>
		    <td><%=rs.getDate("endingdate") %></td>
			</tr>
			
		        <%

		}
		%>
		</table>
		<% 
		}
		else if(searched.equals("laptops") || searched.equals("laptop"))
		{
		%>
			<b>Laptops</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Laptop Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Graphics Card</td>
			<td>Hard Drive</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>Product ID</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			<% 
			
			String queryLaptop ="select * from laptop";
			ResultSet rs2 = stmt.executeQuery(queryLaptop);
			
			while(rs2.next())
			{

			%>
				
			    <tr>
			    <td><%=rs2.getString("username") %></td>
			    <td><%=rs2.getString("laptopname") %></td>
			    <td><%=rs2.getString("os") %></td>
			    <td><%=rs2.getString("processor") %></td>
			    <td><%=rs2.getString("display") %></td>
			    <td><%=rs2.getString("ram") %></td>
			    <td><%=rs2.getString("graphicscard") %></td>
			    <td><%=rs2.getString("harddrive") %></td>
			    <td><%=rs2.getString("battery") %></td>
			    <td><%=rs2.getString("deviceid") %></td>
			    <td><%=rs2.getString("productid") %></td>
			    <td><%=rs2.getInt("initialprice") %></td>
			    <td><%=rs2.getInt("bidincrement") %></td>
			     <td><%=rs2.getInt("currentbid") %></td>
			    <td><%=rs2.getDate("endingdate") %></td>
				</tr>
				
			        <%

			}
			%>
			</table>
			<% 
		}
		else if(searched.equals("phones") || searched.equals("phone"))
		{
			%>
			<b>Phones</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Phone Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Phone Storage</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>IMEI</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			<% 
			
			String queryPhone ="select * from phone";
			ResultSet rs3 = stmt.executeQuery(queryPhone);
			
			while(rs3.next())
			{

			%>
				
			    <tr>
			    <td><%=rs3.getString("username") %></td>
			    <td><%=rs3.getString("phonename") %></td>
			    <td><%=rs3.getString("os") %></td>
			    <td><%=rs3.getString("processor") %></td>
			    <td><%=rs3.getString("display") %></td>
			    <td><%=rs3.getString("ram") %></td>
			    <td><%=rs3.getString("phonestorage") %></td>
			    <td><%=rs3.getString("battery") %></td>
			    <td><%=rs3.getString("deviceid") %></td>
			    <td><%=rs3.getString("imei") %></td>
			    <td><%=rs3.getInt("initialprice") %></td>
			    <td><%=rs3.getInt("bidincrement") %></td>
			     <td><%=rs3.getInt("currentbid") %></td>
			    <td><%=rs3.getDate("endingdate") %></td>
				</tr>
				
			        <%

			}
			%>
			</table>
			<% 
		}
		else if(searched.equals("ios")) //if user searches for apple products
		{
			%>
			<b>Phones</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Phone Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Phone Storage</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>IMEI</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			<% 
			
			String queryApple ="select * from phone where os = 'ios'";
			ResultSet rs4 = stmt.executeQuery(queryApple);
			
			while(rs4.next())
			{

			%>
				
			    <tr>
			    <td><%=rs4.getString("username") %></td>
			    <td><%=rs4.getString("phonename") %></td>
			    <td><%=rs4.getString("os") %></td>
			    <td><%=rs4.getString("processor") %></td>
			    <td><%=rs4.getString("display") %></td>
			    <td><%=rs4.getString("ram") %></td>
			    <td><%=rs4.getString("phonestorage") %></td>
			    <td><%=rs4.getString("battery") %></td>
			    <td><%=rs4.getString("deviceid") %></td>
			    <td><%=rs4.getString("imei") %></td>
			    <td><%=rs4.getInt("initialprice") %></td>
			    <td><%=rs4.getInt("bidincrement") %></td>
			     <td><%=rs4.getInt("currentbid") %></td>
			    <td><%=rs4.getDate("endingdate") %></td>
				</tr>
				
			        <%

			}
			%>
			</table>
			<% 
		}
		else if(searched.equals("android"))
		{
			%>
			<b>Phones</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Phone Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Phone Storage</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>IMEI</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			<% 
			
			String queryAndroid ="select * from phone where os = 'android'";
			ResultSet rs5 = stmt.executeQuery(queryAndroid);
			
			while(rs5.next())
			{

			%>
				
			    <tr>
			    <td><%=rs5.getString("username") %></td>
			    <td><%=rs5.getString("phonename") %></td>
			    <td><%=rs5.getString("os") %></td>
			    <td><%=rs5.getString("processor") %></td>
			    <td><%=rs5.getString("display") %></td>
			    <td><%=rs5.getString("ram") %></td>
			    <td><%=rs5.getString("phonestorage") %></td>
			    <td><%=rs5.getString("battery") %></td>
			    <td><%=rs5.getString("deviceid") %></td>
			    <td><%=rs5.getString("imei") %></td>
			    <td><%=rs5.getInt("initialprice") %></td>
			    <td><%=rs5.getInt("bidincrement") %></td>
			     <td><%=rs5.getInt("currentbid") %></td>
			    <td><%=rs5.getDate("endingdate") %></td>
				</tr>
				
			        <%

			}
			
			%>
			</table>
			<% 
		}
		else if(searched.equals("windows"))
		{
			%>
			<b>Laptops</b>
			<table border="2">
			<tr>
			<td>Seller</td>
			<td>Laptop Name</td>
			<td>OS</td>
			<td>Processor</td>
			<td>Display</td>
			<td>Ram</td>
			<td>Graphics Card</td>
			<td>Hard Drive</td>
			<td>Battery</td>
			<td>Device ID</td>
			<td>Product ID</td>
			<td>Initial Price</td>
			<td>Bid Increment</td>
			<td>Current Bid</td>
			<td>End Date</td>
			</tr>
			<% 
			
			String queryWindows ="select * from laptop where os = 'windows'";
			ResultSet rs6 = stmt.executeQuery(queryWindows);
			
			while(rs6.next())
			{

			%>
				
			    <tr>
			    <td><%=rs6.getString("username") %></td>
			    <td><%=rs6.getString("laptopname") %></td>
			    <td><%=rs6.getString("os") %></td>
			    <td><%=rs6.getString("processor") %></td>
			    <td><%=rs6.getString("display") %></td>
			    <td><%=rs6.getString("ram") %></td>
			    <td><%=rs6.getString("graphicscard") %></td>
			    <td><%=rs6.getString("harddrive") %></td>
			    <td><%=rs6.getString("battery") %></td>
			    <td><%=rs6.getString("deviceid") %></td>
			    <td><%=rs6.getString("productid") %></td>
			    <td><%=rs6.getInt("initialprice") %></td>
			    <td><%=rs6.getInt("bidincrement") %></td>
			     <td><%=rs6.getInt("currentbid") %></td>
			    <td><%=rs6.getDate("endingdate") %></td>
				</tr>
				
			        <%

			}
			
			%>
			</table>
			<% 
		}
		
%>
</body>
</html>
