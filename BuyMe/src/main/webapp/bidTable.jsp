
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>

<%
    String select = "SELECT * FROM buyme.bid WHERE device_id= '" + request.getParameter("deviceid") + "'";
    //Get the database connection
	  ApplicationDB db = new ApplicationDB();
	  Connection con = db.getConnection();
    Statement stm = con.createStatement();
    ResultSet rs= stm.executeQuery(select);    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9c90ba2028.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <table class="table table-striped" style="border:none; margin-left: auto; margin-right: auto; width: 90%">
            <tr align="center">
                <th>User</th>
                <th>Bid</th>
                <th>Bid Date</th>
                <th>Device Id</th>
            </tr>
            <%while(rs.next()){%>
            <tr align="center">
                <td><%=rs.getString("user")%></td>
                <td><%=rs.getInt("bid")%></td>
                <td><%=rs.getDate("bid_date")%></td>
                <td><%=rs.getString("device_id")%></td>
            </tr>
            <%}%>
	</table>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
