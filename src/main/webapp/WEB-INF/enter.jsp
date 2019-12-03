<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Enter</title>
</head>
<body>
<center>
    <h1><b><spring:message code="messages.enterMessage"/></b></h1>
    <form class="text" action="/enter" method="post">
        <input required type="text" name="login" placeholder="Login"><br>
        <input required type="password" name="password" placeholder="Password"><br><br>
        <input type="submit" value="<spring:message code="messages.enter"/>">
    </form>

    <p>
    <form action="/">
        <input type="submit" value="<spring:message code="messages.onMainPage"/>"></form>
    </p>
</center>
</body>
</html>
