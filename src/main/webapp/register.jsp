<%--
  Created by IntelliJ IDEA.
  User: agnieszka
  Date: 13.09.2023
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration and Login System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" th:fragment="header">
    <div class="container-fluid">
        <a class="navbar-brand" th:href="@{/}">Registration and Login System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
<br />
<br />
<br />
<div class="container">
    <div class="row col-md-8 offset-md-2">
        <div class="card">
            <div th:if="${param.success}">
                <div class="alert alert-info">You've successfully registered
                    to our app!</div>
            </div>
            <div class="card-header">
                <h2 class="text-center">Registration</h2>
            </div>
            <div class="card-body">
                <form method="post" role="form" th:action="@{/register/save}" th:object="${user}">

                    <div class="form-group mb-3">
                        <label class="form-label">First Name</label>
                        <input class="form-control"
                               id="firstName"
                               name="firstName"
                               placeholder="Enter first name"
                               th:field="*{firstName}"
                               type="text"
                        />
                        <p th:errors="*{firstName}" class="text-danger"
                           th:if="${#fields.hasErrors('firstName')}">
                        </p>
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label">Last Name</label>
                        <input class="form-control"
                               id="lastName"
                               name="lastName"
                               placeholder="Enter last name"
                               th:field="*{lastName}"
                               type="text"
                        />
                        <p th:errors="*{lastName}" class="text-danger"
                           th:if="${#fields.hasErrors('lastName')}">
                        </p>
                    </div>
                    <div class="form-group mb-3">
                        <label class="form-label">Email</label>
                        <input class="form-control"
                               id="email"
                               name="email"
                               placeholder="Enter email address"
                               th:field="*{email}"
                               type="email"
                        />
                        <p th:errors="*{email}" class="text-danger"
                           th:if="${#fields.hasErrors('email')}">
                        </p>
                    </div>
                    <div class="form-group mb-3">
                        <label class="form-label">Password</label>
                        <input class="form-control"
                               id="password"
                               name="password"
                               placeholder="Enter password"
                               th:field="*{password}"
                               type="password"
                        />
                        <p th:errors="*{password}" class="text-danger"
                           th:if="${#fields.hasErrors('password')}">
                        </p>
                    </div>

                    <div class="form-group mb-3">
                        <button class="btn btn-primary" type="submit">Register</button>
                        <span>Already registered? <a href="/" th:href="@{/login}">Login
                             here</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
