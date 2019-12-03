<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<span style="float: left">
    <a href="?lang=en"><spring:message code="messages.language" /> </a>
    |
    <a href="?lang=ru"><spring:message code="messages.language.ru"/></a>
</span>
<center>
    <h1><b><spring:message code="messages.welcome"/></b></h1><br>

    <p>
    <form action="/enter" method="get">
       <input type="submit" value="<spring:message code="messages.enter"/>"> <br><br>
    </form>
    </p>
    <p>
    <form action="/registration" method="get">
        <input type="submit" value="<spring:message code="messages.registration"/>">
    </form>
    </p>
</center>
</body>
</html>
