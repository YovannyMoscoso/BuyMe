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
    int upperLimit = Integer.valueOf(request.getParameter("upperLimit"));
    int increment = Integer.valueOf(request.getParameter("increment"));
    String deviceId = request.getParameter("deviceid");
    String sqlInsert = "INSERT INTO buyme.bid (bid, upper_limit, increment, bid_date, user, device_id) VALUES ('" + bid + "', '" + upperLimit + "', '" + increment + "', '" + bidDate + "', '" + user + "', '" + deviceId + "')";
    ApplicationDB db = new ApplicationDB();
	  Connection con = db.getConnection();
    Statement stm = con.createStatement();
    int i = stm.executeUpdate(sqlInsert);
    String insertBidToLaptop = "UPDATE buyme.laptop SET " ;
    stm = con.createStatement();
    i = stm.executeUpdate(insertBidToLaptop);
    response.sendRedirect("bidTable.jsp");
%>
