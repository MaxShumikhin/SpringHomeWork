<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Good</title>
</head>
<body>
<center>
    <h1><b><spring:message code="messages.registrationGood"/> </b></h1></h1><br>
<p>
<form action="/" method="get">
    <input type="submit" value="<spring:message code="messages.onMainPage"/>"> </p>
</form>
</center>
</body>
</html>
