<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 02.12.2019
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<center>
<h1><b>Добро пожаловать в базу данных</b></h1></p>

<table border="2">
    <tr>
        <th>ID</th>
        <th>Login</th>
        <th>Password</th>
        <th>Role</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Возвраст</th>
        <th>Описание</th>
        <th>Страна</th>
        <th>Город</th>
        <th>Действия</th>
    </tr>
    <c:forEach items="${user}" var="user">
        <tr>
            <td>${user.idUser}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>${user.role}</td>
            <td>${user.info.name}</td>
            <td>${user.info.lName}</td>
            <td>${user.info.age}</td>
            <td>${user.info.description}</td>
            <td>${user.adress.country}</td>
            <td>${user.adress.city}</td>
            <td>
                <br>
                <form action="userUpdate/${user.idUser}" method="get">
                    <input type="submit" value="Изменить">
                </form>
                <br>
            </td>
        </tr>
    </c:forEach>
</table>


<p>
<form action="/">
    <input type="submit" value="Выход"></form>
</center>
</body>
</html>
