<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="com.cs336.pkg.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<html>
<head>
    <title>Delete Auction</title>
</head>
<body>


<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BuyMe"
                   user="root"
                   password="ojas1234"/>


<sql:query var="find_matches" dataSource="${dataSource}">
    select * from laptop;
</sql:query>

<c:choose>
    <c:when test="${find_matches.rows[0].account_id == sessionScope.account_id or sessionScope.account_type == 'Administrator'}">
        <sql:update var="delete_auction" dataSource="${dataSource}">
            delete from laptop where deviceid = ${param.delete_auction_id};
        </sql:update>
        <c:choose>
            <c:when test="${delete_auction > 0}">
                auction deleted successfully
                <form  action="sellerAuctionListing.jsp" method="post">
                <button name="go_back" value="" type="submit">Click here to go back</button>
   				 </form>
            </c:when>
            <c:otherwise>
                error
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        unauthorized
    </c:otherwise>
</c:choose>


</body>
</html>