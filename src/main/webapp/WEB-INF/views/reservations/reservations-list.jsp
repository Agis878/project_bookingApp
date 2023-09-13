<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 12.09.2023
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista rezerwacji</title>
</head>
<body>

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

  <h3><a href="http://localhost:8080/reservations/add">Dodaj rezerwację</a> DODAJ REZERWACJĘ</h3>
</body>
</html>
