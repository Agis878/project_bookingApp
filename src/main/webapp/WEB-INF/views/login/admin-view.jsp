<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 13.09.2023
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Panel administracyjny</title>
</head>
<body>
<h3>Lista rezerwacji</h3>
<div>
    <table>
        <tr>
            <th>Id</th>
            <th>Sala</th>
            <th>Liczba miejsc</th>
            <th>od</th>
            <th>do</th>
            <th>status</th>
            <th>ID użytkownika</th>
        </tr>
        <c:forEach items="${reservations}" var="reservation">
            <tr>
                <td>${reservation.id}</td>
                <td>${reservation.room.name}</td>
                <td>${reservation.room.numberOfSeats}</td>
                <td>${reservation.reservationStart}</td>
                <td>${reservation.reservationEnd}</td>
                <td>${reservation.reservationStatus}</td>
                <td>${reservation.user.id}</td>

                <td><a href="/reservations/update?id=${reservation.id}">Edytuj</a><br/>
                    <a href="/reservations/delete?id=${reservation.id}">Usuń</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
