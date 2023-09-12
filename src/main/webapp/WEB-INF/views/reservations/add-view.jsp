<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 12.09.2023
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj rezerwację</title>
</head>
<body>
<form:form method="post" modelAttribute="reservation">
    Sala: <form:select path="room.id" items="${roomList}" itemLabel="name" itemValue="id"/><br/>
    Start <form:input path="reservationStart" type="date" class="form-control form-control-lg" id="fromBookingDate" placeholder="dd/MM/yyyy"/><br/>
    END: <form:input path="reservationEnd" type="date" class="form-control form-control-lg" id="fromBookingDate" placeholder="dd/MM/yyyy"/><br/>
    <form:button>Dodaj</form:button>
</form:form>
</body>
</html>
