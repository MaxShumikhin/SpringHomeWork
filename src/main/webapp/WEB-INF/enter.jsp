<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 28.11.2019
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enter</title>
</head>
<body>
<center>
    <h1><b>Добро пожаловать избранный, введи логин и пароль</b></h1>
    <form class="text"  action="/enter" method="post" >
    <input required type="text" name="login" placeholder="Login"><br>
    <input required type="password" name="password" placeholder="Password"><br><br>
    <input type="submit" value="Enter">
    </form>

    <p><form action="/">
    <input type="submit" value="Cancel"></form></p>
</center>
</body>
</html>
