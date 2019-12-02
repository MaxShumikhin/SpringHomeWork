<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 02.12.2019
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<center>
    <h1><b>  Ты действительно хочешь удалить пользователя ${param.id}?</b></h1>

    <form action="/delete" method="post">
        <input type="hidden" name="id" value="${param.id}">
        <input type="hidden" name="_method" value="delete">
        <input type="submit" value="Удалить">
    </form>
</center>
</body>
</html>
