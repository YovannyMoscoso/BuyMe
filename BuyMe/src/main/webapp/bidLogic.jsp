<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%
Date date = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
String bidDate = formatter.format(date);
String user = session.getAttribute("username").toString();
int bid = Integer.valueOf(request.getParameter("bid"));
int upperLimit = 0;
int increment = 0;
if (request.getParameter("upperLimit") != null && request.getParameter("increment") != null) {
	upperLimit = Integer.valueOf(request.getParameter("upperLimit"));
	increment = Integer.valueOf(request.getParameter("increment"));
}
String deviceId = request.getParameter("deviceid");
String sqlInsert = "INSERT INTO buyme.bid (bid, upper_limit, increment, bid_date, user, device_id) VALUES ('" + bid
		+ "', '" + upperLimit + "', '" + increment + "', '" + bidDate + "', '" + user + "', '" + deviceId + "')";
ApplicationDB db = new ApplicationDB();
Connection con = db.getConnection();
Statement stm = con.createStatement();

String insertBidToDevice = "UPDATE ";

boolean found = false;
String queryDevice = "SELECT * FROM tablet WHERE tablet.deviceid=" + deviceId;
ResultSet bidItem = stm.executeQuery(queryDevice);
if (!found && bidItem.isBeforeFirst()) { //if item was found in tablet
	insertBidToDevice = insertBidToDevice + "tablet SET currentBid = " + request.getParameter("bid")
	+ " WHERE deviceid = " + request.getParameter("deviceid");

	String check = "SELECT tablet.currentbid, tablet.bidincrement From tablet WHERE deviceid = " + deviceId;
	bidItem = stm.executeQuery(check);
	bidItem.next();
	if (bid > bidItem.getInt(1) + bidItem.getInt(2)) {
		stm.executeUpdate(sqlInsert);
		stm.executeUpdate(insertBidToDevice);
	}

	found = true;
}

queryDevice = "SELECT * FROM laptop WHERE laptop.deviceid=" + deviceId;
bidItem = stm.executeQuery(queryDevice);
if (!found && bidItem.isBeforeFirst()) { //if item was found in laptop
	insertBidToDevice = insertBidToDevice + "laptop SET currentBid = " + request.getParameter("bid")
	+ " WHERE deviceid = " + request.getParameter("deviceid");

	String check = "SELECT laptop.currentbid, laptop.bidincrement From laptop WHERE deviceid = " + deviceId;
	bidItem = stm.executeQuery(check);
	bidItem.next();
	if (bid > bidItem.getInt(1) + bidItem.getInt(2)) {
		stm.executeUpdate(sqlInsert);
		stm.executeUpdate(insertBidToDevice);
	}

	found = true;
}

queryDevice = "SELECT * FROM phone WHERE phone.deviceid=" + deviceId;
bidItem = stm.executeQuery(queryDevice);
if (!found && bidItem.isBeforeFirst()) { //if item was found in phone
	insertBidToDevice = insertBidToDevice + "phone SET currentBid = " + request.getParameter("bid")
	+ " WHERE deviceid = " + request.getParameter("deviceid");

	String check = "SELECT phone.currentbid, phone.bidincrement From phone WHERE deviceid = " + deviceId;
	bidItem = stm.executeQuery(check);
	bidItem.next();
	if (bid > bidItem.getInt(1) + bidItem.getInt(2)) {
		stm.executeUpdate(sqlInsert);
		stm.executeUpdate(insertBidToDevice);
	}

	found = true;
}

response.sendRedirect("bidTable.jsp");
%>
