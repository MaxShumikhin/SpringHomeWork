<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bad</title>
</head>
<body>
<center>
    <h3><b><spring:message code="messages.registrationBad"/></b></h3>

    <form action="/registration" method="get">
        <input type="submit" value="<spring:message code="messages.registration"/>">
    </form>
    <form action="/" method="get">
        <input type="submit" value="<spring:message code="messages.reset"/>">
    </form>
</center>
</body>
</html>
