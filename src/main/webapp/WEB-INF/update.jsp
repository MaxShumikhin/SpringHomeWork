<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: BVK
  Date: 12/2/2019
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<center>
    Редактировать пользователя

    <form action="/update" method="post">
        <input type="hidden" name="idUser" value="${user.idUser}"><br><br>
        <input type="hidden" name="idUser" value="${user.info.idInfo}"><br><br>
        <input type="hidden" name="idUser" value="${user.adress.idAdress}"><br><br>
        Login <input type="text" name="login" value="${user.login}" placeholder=${user.login}><br><br>
        Password <input type="text" name="password" value="${user.password}" placeholder=${user.password}><br><br>
        Name <input type="text" name="name" value="${user.info.name}" placeholder=${user.info.name}><br><br>
        Last Name <input type="text" name="lName" value="${user.info.lName}" placeholder=${user.info.lName}><br><br>
        Age <input type="text" name="age" value="${user.info.age}" placeholder=${user.info.age}><br><br>
        Description <input type="text" name="description" value="${user.info.description}"
                           placeholder=${user.info.description}><br><br>
        Country <input type="text" name="country" value="${user.adress.country}" placeholder=${user.adress.country}><br><br>
        City <input type="text" name="city" value="${user.adress.city}" placeholder=${user.adress.city}><br><br>
        Role <input type="text" name="role" value="${user.role}" placeholder=${user.role}><br><br>
        <input type="submit" value="Обновить">
    </form>

</center>
</body>
</html>
