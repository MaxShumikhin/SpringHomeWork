<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Update</title>
</head>
<body>
<center>
    <spring:message code="messages.updateMessage"/>

    <form action="/userUpdate" method="post">
        <input type="hidden" name="idUser" value="${user.idUser}"><br><br>
        <input type="hidden" name="idUser" value="${user.info.idInfo}"><br><br>
        <input type="hidden" name="idUser" value="${user.adress.idAdress}"><br><br>
        <input type="hidden" name="login" value="${user.login}" placeholder=${user.login}><br><br>
        Password <input type="text" name="password" value="${user.password}" placeholder=${user.password}><br><br>
        Name <input type="text" name="name" value="${user.info.name}" placeholder=${user.info.name}><br><br>
        Last Name <input type="text" name="lName" value="${user.info.lName}" placeholder=${user.info.lName}><br><br>
        Age <input type="number" size="3" name="age" min="1" max="120" value="${user.info.age}"
                   placeholder="${user.info.age}"><br><br>
        Description <input type="text" name="description" value="${user.info.description}"
                           placeholder=${user.info.description}><br><br>
        Country <input type="text" name="country" value="${user.adress.country}" placeholder=${user.adress.country}><br><br>
        City <input type="text" name="city" value="${user.adress.city}" placeholder=${user.adress.city}><br><br>
        <input type="hidden" name="role" value="${user.role}" placeholder=${user.role}><br><br>
        <input type="submit" value="<spring:message code="messages.update"/>">
    </form>

</center>
</body>
</html>
