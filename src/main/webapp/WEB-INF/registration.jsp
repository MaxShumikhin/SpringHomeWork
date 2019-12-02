<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 28.11.2019
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<body>
<center>
    <h1><b>Добро пожаловать на регистрацию</b></h1>

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
            <button type="submit">Save</button>
        </p>
        <p>
            <button type="reset">Reset</button>
        </p>
    </form:form>
    <p>
    <form action="/">
        <input type="submit" value="Cancel">
    </form>
    </p>
</center>
</body>
</html>
