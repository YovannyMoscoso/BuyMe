<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
    int deviceID = -1;
    if (request.getParameter("deviceid") != null) {
        deviceID = Integer.parseInt(request.getParameter("deviceid"));
    }
%>
<head>
    <title><%="Device: " + deviceID%></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
</head>
<body>



    <%
        //Get the database connection

        Connection con = db.getConnection();
        //Create a SQL statement
        Statement stmt = con.createStatement();
        //out.println("testing");
    %>

    <form action="bidLogic.jsp" method="post">
        Place Bid: <input name="bid" type="text" /> <br />
        Automatic BiddingSecret Upper Limit (Optional): <input name="upperLimit" type="text"  placeholder="0"/><br /> 
        Automatic Bidding Increment (Requires Upper Limit): <input name="increment" type="text" placeholder="0"/> <br />
        <input name="deviceid" type="hidden" value="<%= deviceID %>"> <br />
        <button type="submit">Submit</button>
    </form>

    <h4 style="text-align: center">Device</h4>
    <table class="table table-striped" style="border:none; margin-left: auto; margin-right: auto; width: 95%">
        <%
            Boolean found = false;
            String itemHistory[] = {""};
            //Check if device was found in laptop
            String queryDevice = "SELECT * FROM tablet WHERE tablet.deviceid=" + deviceID;
            ResultSet bidItem = stmt.executeQuery(queryDevice);
            if (!found && bidItem.isBeforeFirst()) { //if item was found in tablet
                bidItem.next();
                //out.println("Found in Tablet");
                itemHistory = bidItem.getString("history").substring(1).split("\\$");
        %>
        <tr align="center">
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

        <tr align="center">
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
        <tr align="center">
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

        <tr align="center">
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
        <tr align="center">
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

        <tr align="center">
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
    </table><!-- comment -->
    <br><br>
    <h4 style="text-align: center">Bid</h4>
    <jsp:include page="bidTable.jsp"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
