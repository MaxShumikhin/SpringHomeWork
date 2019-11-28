<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 28.11.2019
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<center>
    <h1><b>Добро пожаловать на самый чудесный сайт :) Желаете дальше познакомиться с ним?</b></h1><br>

    <p>
    <form action="/enter" method="get">
        <input type="submit" value="Вход"> <br><br>
    </form>
    </p>
    <p>
    <form action="/registration" method="get">
        <input type="submit" value="Регистрация">
    </form>
    </p>
</center>
</body>
</html>
