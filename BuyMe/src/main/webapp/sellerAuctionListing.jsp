<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action = "buyerBidForm.jsp" method = "post">
	Select Device to Bid On (DeviceID): <input name = "deviceid" type = "text" /> <br/>
	<button type = "submit"> Bid </button>
</form>

 <form action="search.jsp" class="form1">
    <input type="text" name="search" placeholder="Search for anything &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"/>;
    <button type="submit">Search</button>
</form>

<br></br>
<form action = "alertItem.jsp" method = "post">
	 Want to be notified if an item is available? Type in the item: <input name = "alertItem" type = "text" /> <br/>
	 Email: <input name = "email" type = "text" /> <br/>
	<button type = "submit"> Submit </button>
</form>

<br></br>
<a href="forum.jsp">Browse or search questions.</a> 

<br></br>

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
		
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();
		//Create a SQL statement
		Statement stmt = con.createStatement();
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
    
    <c:choose>
                <c:when test="${sessionScope.account_type == 'Customer Service Representative' or sessionScope.account_type == 'Administrator'}">
                    <td style="background-color: red">
                        <form>
                            <button name="delete_auction_id" formaction="remove_tablet.jsp" value=<%=rs.getString("deviceid") %>>Delete Auction</button>
                        </form>
                    </td>
                   
                </c:when>
            </c:choose>
	</tr>
	
        <%
}
%>
    </table>
 
<% // now let's do it for laptop %>
<br></br>
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
		String queryLaptop = "select * from laptop";
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
    
    <c:choose>
                <c:when test="${sessionScope.account_type == 'Customer Service Representative' or sessionScope.account_type == 'Administrator'}">
                    <td style="background-color: red">
                        <form>
                            <button name="delete_auction_id" formaction="remove_laptop.jsp" value=<%=rs2.getString("deviceid") %>>Delete Auction</button>
                        </form>
                    </td>
                    
                </c:when>
            </c:choose>
	</tr>
	
        <%
}
%>
    </table>
    
    
<% //now we do for phones %>
<br></br>
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
		String queryPhone = "select * from phone";
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
    
    <c:choose>
                <c:when test="${sessionScope.account_type == 'Customer Service Representative' or sessionScope.account_type == 'Administrator'}">
                    <td style="background-color: red">
                        <form>
                            <button name="delete_auction_id" formaction="remove_phone.jsp" value=<%=rs3.getString("deviceid") %>>Delete Auction</button>
                        </form>
                    </td>
                    
                </c:when>
            </c:choose>
	</tr>
	
        <%
}
%>
    </table>
 
 




</body>
</html>