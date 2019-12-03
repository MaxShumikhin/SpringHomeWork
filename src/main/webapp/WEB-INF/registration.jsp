<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Registration</title>
</head>
<body>
<body>
<center>
    <h1><b><spring:message code="messages.registrationMessage"/></b></h1>

    <form:form method="post" action="registration" modelAttribute="user">
        <input required type="text" name="login" placeholder="Login"><br>
        <input required type="password" name="password" placeholder="Password"><br>
        <input type="text" name="name" placeholder="First_name"><br>
        <input type="text" name="lName" placeholder="Last_name"><br>
        <input type="text" name="description" placeholder="Description"><br>
        Age <input type="number" size="3" name="age" min="1" max="120" value="1" placeholder="Age"><br>
        <input type="text" name="country" placeholder="Country"><br>
        <input type="text" name="city" placeholder="City"><br><br>
        <input type="radio" name="role" value="admin" checked="checked"> Admin <br>
        <input type="radio" name="role" value="user"> User <br><br>
        <p>
            <button type="submit"><spring:message code="messages.save"/></button>
        </p>
        <p>
            <button type="reset"><spring:message code="messages.reset"/></button>
        </p>
    </form:form>
    <p>
    <form action="/">
        <input type="submit" value="<spring:message code="messages.onMainPage"/>">
    </form>
    </p>
</center>
</body>
</html>
