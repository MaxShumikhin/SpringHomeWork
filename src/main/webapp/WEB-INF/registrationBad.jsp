<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 28.11.2019
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bad</title>
</head>
<body>
<center>
    <h3><b>Упс.... Такой пользователь уже есть<br>
        Попробуй ещё раз или попудь гостем =)</b></h3>

    <form action="/registration" method="get">
        <input type="submit" value="Попытать удачу ещё раз">
    </form>
    <form action="/" method="get">
        <input type="submit" value="Ай, буду гостем">
    </form>
</center>
</body>
</html>
