<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Good</title>
</head>
<body>
<center>
<h1><b><spring:message code="messages.registrationGood"/> <br>
<p>
<form action="/" method="get">
    <input type="submit" value="<spring:message code="messages.onMainPage"/>"> </p>
</form>
</center>
</body>
</html>
