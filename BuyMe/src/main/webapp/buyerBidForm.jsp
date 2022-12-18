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
	//out.println("testing");
	int deviceID = -1;
	if (request.getParameter("deviceid") != null) {
		deviceID = Integer.parseInt(request.getParameter("deviceid"));
	}
	%>
	<b>Device:</b>
	<table border="2">
		<%
		Boolean found = false;
		String itemHistory[] = { "" };
		//Check if device was found in laptop
		String queryDevice = "SELECT * FROM tablet WHERE tablet.deviceid=" + deviceID;
		ResultSet bidItem = stmt.executeQuery(queryDevice);
		if (!found && bidItem.isBeforeFirst()) { //if item was found in tablet
			bidItem.next();
			//out.println("Found in Tablet");
			itemHistory = bidItem.getString("history").substring(1).split("\\$");
		%>
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

		<tr>
			<td><%=bidItem.getString("username")%></td>
			<td><%=bidItem.getString("tabletname")%></td>
			<td><%=bidItem.getString("os")%></td>
			<td><%=bidItem.getString("processor")%></td>
			<td><%=bidItem.getString("display")%></td>
			<td><%=bidItem.getString("ram")%></td>
			<td><%=bidItem.getString("tabletstorage")%></td>
			<td><%=bidItem.getString("battery")%></td>
			<td><%=bidItem.getString("deviceid")%></td>
			<td><%=bidItem.getInt("initialprice")%></td>
			<td><%=bidItem.getInt("bidincrement")%></td>
			<td><%=bidItem.getInt("currentbid")%></td>
			<td><%=bidItem.getDate("endingdate")%></td>
		</tr>
		<%
		found = true;
		}
		%>

		<%
		queryDevice = "SELECT * FROM laptop WHERE laptop.deviceid=" + deviceID;
		bidItem = stmt.executeQuery(queryDevice);
		if (!found && bidItem.isBeforeFirst()) { //if item was found in laptop
			bidItem.next();
			//out.println("Found in laptop");
			itemHistory = bidItem.getString("history").split("$");
		%>
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

		<tr>
			<td><%=bidItem.getString("username")%></td>
			<td><%=bidItem.getString("laptopname")%></td>
			<td><%=bidItem.getString("os")%></td>
			<td><%=bidItem.getString("processor")%></td>
			<td><%=bidItem.getString("display")%></td>
			<td><%=bidItem.getString("ram")%></td>
			<td><%=bidItem.getString("graphicscard")%></td>
			<td><%=bidItem.getString("harddrive")%></td>
			<td><%=bidItem.getString("battery")%></td>
			<td><%=bidItem.getString("deviceid")%></td>
			<td><%=bidItem.getString("productid")%></td>
			<td><%=bidItem.getInt("initialprice")%></td>
			<td><%=bidItem.getInt("bidincrement")%></td>
			<td><%=bidItem.getInt("currentbid")%></td>
			<td><%=bidItem.getDate("endingdate")%></td>
		</tr>
		<%
		found = true;
		}
		%>

		<%
		queryDevice = "SELECT * FROM phone WHERE phone.deviceid=" + deviceID;
		bidItem = stmt.executeQuery(queryDevice);
		if (!found && bidItem.isBeforeFirst()) { //if item was found in phone
			bidItem.next();
			//out.println("Found in phone");
			itemHistory = bidItem.getString("history").split("$");
		%>
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

		<tr>
			<td><%=bidItem.getString("username")%></td>
			<td><%=bidItem.getString("phonename")%></td>
			<td><%=bidItem.getString("os")%></td>
			<td><%=bidItem.getString("processor")%></td>
			<td><%=bidItem.getString("display")%></td>
			<td><%=bidItem.getString("ram")%></td>
			<td><%=bidItem.getString("phonestorage")%></td>
			<td><%=bidItem.getString("battery")%></td>
			<td><%=bidItem.getString("deviceid")%></td>
			<td><%=bidItem.getString("imei")%></td>
			<td><%=bidItem.getInt("initialprice")%></td>
			<td><%=bidItem.getInt("bidincrement")%></td>
			<td><%=bidItem.getInt("currentbid")%></td>
			<td><%=bidItem.getDate("endingdate")%></td>
		</tr>

		<%
		found = true;
		}
		%>
	</table>


	<b>History</b>
	<table border="2">
		<%
		if (found) {
			//String[] itemHistory = {"75","80","85","90"};
			for (String his : itemHistory) {
				out.print("<tr>");
				out.print("<td>" + his + "</td>");
				out.print("</tr>");
			}

		}
		%>
	</table>

</body>
</html>