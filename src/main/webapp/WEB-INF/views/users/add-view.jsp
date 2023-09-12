<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 12.09.2023
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
</head>
<body>
<form:form method="post" modelAttribute="user">
    Login: <form:input path="login"/><br/>
    Password: <form:input path="password"/><br/>
    Email: <form:input path="email"/><br/>
    <form:button>Dodaj</form:button>
</form:form>
</body>
</html>
