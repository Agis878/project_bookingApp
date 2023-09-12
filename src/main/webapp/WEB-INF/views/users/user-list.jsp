<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 12.09.2023
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>
</head>
<body>
<div>
    <a href='<c:url value="/users/add"/>'>Dodaj użytkownika</a>
</div>
<div>
    <table>
        <tr>
            <th>Id</th>
            <th>Login</th>
            <th>Hasło</th>
            <th>Email</th>
            <td>${reservation.id}</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.login}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>

                <td>
                    <ul>
                        <c:forEach items="${user.reservations}" var="reservation">
                            <li>${reservation.id} ${reservation.room} ${reservation.reservationStart} ${reservation.reservationEnd}</li>
                        </c:forEach>
                    </ul>
                </td>
                <td><a href="/view/book/update?id=${book.id}">Edytuj</a><br/>
                    <a href="/view/book/delete?id=${book.id}">Usuń</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
