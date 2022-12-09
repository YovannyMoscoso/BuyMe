<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction A Laptop</title>
</head>
<body>
<b>Auction A Laptop</b><br></br>
<form name="laptopform" action = "sellerItemLaptop.jsp" method = "POST">
	Seller: <input name = "username" type = "text" /> <br/>
	Laptop Name: <input name = "laptopname" type = "text" /> <br/>
	Operating System: <input name = "os" type = "text" /> <br/>
	Processor: <input name = "processor" type = "text" /> <br/>
	Display Size: <input name = "display" type = "text" /> <br/>
	RAM: <input name = "ram" type = "text" /> <br/>
	Graphics Card: <input name = "graphicscard" type = "text" /> <br/>
	Hard Drive Storage: <input name = "harddrive" type = "text" /> <br/>
	Battery: <input name = "battery" type = "text" /> <br/>
	Device ID: <input name = "deviceid" type = "text" /> <br/>
	Product ID: <input name = "productid" type = "text" /> <br/>
	<br></br>
	
	Secret Minimum Price: <input name = "secretminprice" type = "number" /> <br/>
	Initial Price: <input name = "initialprice" type = "number" /> <br/>
	Bid Increment: <input name = "bidincrement" type = "number" /> <br/>
	Ending Auction Date (yyyy-mm-dd): <input name = "date" type = "text" /> <br/>
	
	
	
	
	<button type = "submit"> Submit</button>
</form>


</body>
</html>