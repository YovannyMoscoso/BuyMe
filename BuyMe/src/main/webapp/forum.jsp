<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Q&A - buyMe</title>
</head>
<body>



<h3>Q&A - buyMe</h3>


<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/BuyMe"
                   user="root"
                   password="ojas1234"/>




<sql:query var="all_q_and_a" dataSource="${dataSource}">
    select * from questions;
</sql:query>
<c:set var = "question" scope = "session" value = "${param.user_question}"/>
<c:choose>
    <c:when test="${all_q_and_a.rowCount > 0 and empty param.user_question and empty param.csr_answer}">
        <table border="1" cellpadding="5">
            <tr>
                
                <th>Question</th>
                
                <th>Answer</th>
            </tr>
            <c:forEach var="row" items="${all_q_and_a.rows}">
                <tr>
                    <c:choose>
                        <c:when test="${not empty row.answer}">
                        	<td style="word-wrap: break-word;"><c:out value="${row.question}"/></td>
                            <td style="word-wrap: break-word;"><c:out value="${row.answer}"/></td>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${sessionScope.account_type == 'Customer Service Representative' or sessionScope.account_type == 'Administrator'}">
                                   <td style="word-wrap: break-word;"><c:out value="${row.question}"/></td>
                                    <td>No Answer yet</td>
                                    <td style="background-color: blue">
                                        <form>
                                            <input type="text" name="csr_answer"/>
                                            <input type="hidden" value="${row.question}" name="question"/>
                                            <button formmethod="post" name="csr_reply_to_question_id" value="${param.csr_answer}" type="submit" formaction="forum.jsp">Reply to this question</button>
                                        </form>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td style="word-wrap: break-word;"><c:out value="${row.question}"/></td>
                                    <td>No Answer yet</td>
                                    <td>
                                        <button disabled>Only CSR's can reply to questions</button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <c:when test="${not empty param.user_question}">
        <sql:update dataSource="${dataSource}" var="user_asked_question_query">
            insert into questions(question)
            values
            ('<c:out value="${param.user_question}" escapeXml="true"/>');
        </sql:update>
               
            <c:choose>
            <c:when test="${user_asked_question_query > 0}">
                Question asked successfully. 
                 <form  action="forum.jsp" method="post">
                <button name="go_back" value="" type="submit">Click here to go back</button>
   				 </form>
                
            </c:when>
            <c:otherwise>
                Error asking question.
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:when test="${not empty param.csr_answer}">
        <sql:update dataSource="${dataSource}" var="csr_answered_question_query">
            update questions
            set answer ='<c:out value="${param.csr_answer}" escapeXml="true"/>'
            Where question like '%${param.question}%';
        </sql:update>
       
                Question answered successfully.
                <form  action="forum.jsp" method="post">
                <button name="go_back" value="" type="submit">Click here to go back</button>
   				 </form>
           
    </c:when>
    <c:otherwise>
   
        No questions have been asked yet.<br/>
        Be the first!<br/>
    </c:otherwise>
</c:choose>
<c:if test="${empty param.user_question and empty param.csr_answer}">
    Ask a question:<br/>
     
    
    <form  action="forum.jsp" method="post">
        <input type="text" name="user_question" placeholder="Ask question here"/><br/>
        <button name="user_asked_question_id" value="${param.user_question}" type="submit">Ask</button>
    </form>
</c:if>





</body>
</html>