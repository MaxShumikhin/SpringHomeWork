<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Menu</title>
</head>
<body>
<center>
    <p>
    <h1><b><spring:message code="messages.menuMessage"/></b></h1></p>

    <table border="2">
        <tr>
            <th><spring:message code="messages.ID"/></th>
            <th><spring:message code="messages.login"/></th>
            <th><spring:message code="messages.password"/></th>
            <th><spring:message code="messages.role"/></th>
            <th><spring:message code="messages.name"/></th>
            <th><spring:message code="messages.lastName"/></th>
            <th><spring:message code="messages.age"/></th>
            <th><spring:message code="messages.description"/></th>
            <th><spring:message code="messages.country"/></th>
            <th><spring:message code="messages.city"/></th>
            <th><spring:message code="messages.action"/></th>
        </tr>
        <c:forEach items="${users}" var="user">
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
                    <form action="update/${user.idUser}" method="get">
                        <input type="submit" value="<spring:message code="messages.update"/>">
                    </form>
                    <br>
                    <br>
                    <form action="/delete" method="get">
                        <input type="hidden" name="id" value="${user.idUser}">
                        <input type="submit" value="<spring:message code="messages.delete"/>">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <p>
    <form action="/registration" method="get">
        <input type="submit" value="<spring:message code="messages.registration"/>">
    </form>
    </p>

    <p>
    <form action="/">
        <input type="submit" value="<spring:message code="messages.onMainPage"/>"></form>
</center>
</body>
</html>
