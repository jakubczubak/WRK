<%--
  Created by IntelliJ IDEA.
  User: kuba
  Date: 28.07.19
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WRK Brakes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div>
    <p class ="navbar-text">Uzytkownik: ${user}</p>
    <form class="navbar-form" method = post action="/logout">
        <button type="submit" class ="btn btn-success">wyloguj</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    </form>
</div>
<h1>Welcome to HomePage</h1>
</body>
</html>
