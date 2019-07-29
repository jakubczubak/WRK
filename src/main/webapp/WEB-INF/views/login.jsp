<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kuba
  Date: 29.07.19
  Time: 08:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WRK Brakes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="d-flex justify-content-center">
    <div class="container">
    <div style="margin-top: 150px">
    <form method="post" action="/mylogin">

        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="text"  name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Username">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>  <div class="alert alert-danger" role="alert">
        <c:if test="${param.error != null}">
            Incorrect username or password!
        </c:if>
    </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <div class="form-check">
            <input type="checkbox" name="rememberMe" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Remember Me ;)</label>
        </div>
        <button type="submit" class="btn btn btn-primary btn-block">Login</button>
        <p> </p>
        <div class="mx-auto" style="width: 200px;">
            <p class="text-dark">Don't have an account yet?</p>
        </div>

        <button type="submit" class="btn btn-success btn-block">Register</button>
    </form>
    </div>
    </div>
</body>
</html>
