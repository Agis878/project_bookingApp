<%--
  Created by IntelliJ IDEA.
  User: dominik
  Date: 25.07.2023
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<html>
<head>
    <title>Dodaj rezerwację</title>
</head>
<body>
<h1>Formularz logowania</h1>

<c:if test="${not empty loginError}">
    <p style="color: red;">${loginError}</p>
</c:if>

<form method="post" action="/login">
    <!-- Pola do wprowadzenia loginu i hasła -->
    <input type="text" name="email" placeholder="Login"><br>
    <input type="password" name="password" placeholder="Hasło"><br>
    <input type="submit" value="Zaloguj się">
</form>
</body>
</html>
