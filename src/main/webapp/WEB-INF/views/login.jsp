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
</head>
<body>
<c:if test="${param.error != null}">
    <div>Podaj porawny login i haslo</div>
</c:if>
<form method="post" action="/mylogin">
   username <input type="text" name="username"><br>
   password <input type="password" name="password"><br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <input type="checkbox" name="rememberMe">Remember me
    <button type="submit">Zaloguj</button>
</form>
Nie masz konta? <a href="/myregistration">Zarejestruj!</a>
</body>
</html>
