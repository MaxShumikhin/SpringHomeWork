<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<center>

        <p>
        <h1><b>Добро пожаловать в базу данных</b></h1>
        </p>

        <table border="2">
            <tr>
                <th>ID</th>
                <th>Login</th>
                <th>Password</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Возвраст</th>
                <th>Описание</th>
                <th>Страна</th>
                <th>Город</th>
                <th>Role</th>
                <th>Действия</th>
            </tr>
            <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.getIdUsers()}</td>
                <td>${user.getLogin()}</td>
                <td>${user.getPassword()}</td>
                <td>${user.info.getName()}</td>
                <td>${user.info.getlName()}</td>
                <td>${user.info.getAge()}</td>
                <td>${user.info.getDescription()}</td>
                <td>${user.adress.getCountry()}</td>
                <td>${user.adress.getCity()}</td>
                <td>${user.getRole()}</td>
                    <%--  <td>
                          <form action="updateUser.jsp" method="post">
                              <input type="hidden" name="id" value="${user.getIdUser()}">
                              <input type="hidden" name="login" value="${user.getLogin()}">
                              <input type="hidden" name="password" value="${user.getPassword()}">
                              <input type="hidden" name="name" value="${user.info.getName()}">
                              <input type="hidden" name="lName" value="${user.info.getlName()}">
                              <input type="hidden" name="age" value="${user.info.getAge()}">
                              <input type="hidden" name="description" value="${user.info.getDescription()}">
                              <input type="hidden" name="country" value="${user.adress.getCountry()}">
                              <input type="hidden" name="city" value="${user.adress.getCity()}">
                              <input type="hidden" name="role" value="${user.getRole()}">
                              <input type="submit" value="Изменить">
                          </form>
                          <br>
                          <form action="deleteUser.jsp" method="post">
                              <input type="hidden" name="id" value="${user.getIdUser()}">
                              <input type="submit" value="Удалить">
                          </form>
                      </td>--%>
            </tr>
            </c:forEach>
    </table>

    <p>
    <form action="/registration">
        <input type="submit" value="Регистрация">
    </form>
    </p>
    <p>
    <form action="/">
        <input type="submit" value="Выход">
    </form>
    </p>
</center>
</body>
</html>
