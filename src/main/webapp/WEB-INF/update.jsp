
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
        <input type="hidden" name="id" value="${param.id}"><br><br>
        Login <input type="text" name="login" value="${param.login}" placeholder=${param.login}><br><br>
        Password <input type="text" name="password" value="${param.password}" placeholder=${param.password}><br><br>
        Name <input type="text" name="name" value="${param.name}" placeholder=${param.name}><br><br>
        Last Name <input type="text" name="lName" value="${param.lName}" placeholder=${param.lName}><br><br>
        Age <input type="text" name="age" value="${param.age}" placeholder=${param.age}><br><br>
        Description <input type="text" name="description" value="${param.description}" placeholder=${param.description}><br><br>
        Country <input type="text" name="country" value="${param.country}" placeholder=${param.country}><br><br>
        City <input type="text" name="city" value="${param.city}" placeholder=${param.city}><br><br>
        Role <input type="text" name="role" value="${param.role}" placeholder=${param.role}><br><br>
        <input type="submit" value="Обновить">
    </form>

</center>
</body>
</html>
