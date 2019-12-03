<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="string" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<center>
    <h1><b>  <spring:message code="messages.deleteMessage"/> ${param.id}?</b></h1>

    <form action="/delete" method="post">
        <input type="hidden" name="id" value="${param.id}">
        <input type="hidden" name="_method" value="delete">
        <input type="submit" value="<spring:message code="messages.delete"/>">
    </form>
</center>
</body>
</html>
