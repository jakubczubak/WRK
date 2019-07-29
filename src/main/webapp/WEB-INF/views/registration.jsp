<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kuba
  Date: 29.07.19
  Time: 09:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
welcome to registration page!

<form:form method="post"
           modelAttribute="user">

    User name<form:input path="username"  /><br>
    <form:errors path="username" cssClass="error" element="div" />
   Password <form:input path="password"  /><br>
    <form:errors path="password" cssClass="error" element="div" />
   email <form:input path="email"  /><br>
    <form:errors path="email" cssClass="error" element="div" />
    <form:hidden path="id" /><br>
    <button type="submit" class="btn btn-success">zarejestruj</button></form:form>
</body>
</html>
