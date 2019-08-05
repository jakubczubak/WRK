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
    <div class="col-lg-3">

    <div style="margin-top: 150px">
        <div style="margin-bottom: 40px" class="ml-xl-5">
            <img src="http://wrkbrakes.com/wp-content/uploads/2018/02/WRK-LOGO2.png">
        </div>
    <form method="post" action="/mylogin">
        <c:if test="${param.error != null}">

    </div>  <div class="alert alert-danger" role="alert">

        Incorrect username or password!

    </div>
        </c:if>
        <c:if test="${param.logout != null}">

    </div>  <div class="alert alert-success" role="alert">

        You are logged out.

    </div>
    </c:if>
    <c:if test="${param.success != null}">

        </div>
        <div class="alert alert-success" role="alert">

        Hello ${username}!

    </div>
    </c:if>

    <h1><p class="text-success">Log in  </p></h1>
    <div class="form-group">
            <label for="exampleInputEmail1">Email</label>
            <input type="text"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <div style="margin-top: 10px"  class="form-check">
            <input type="checkbox" name="rememberMe" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Remember me</label>
        </div>
        <button style="margin-top: 10px" type="submit" class="btn btn btn-primary btn-block">Login</button>
            <a class="btn btn-success btn-block" href="/myregistration">Register!</a>


    </form>
    </div>
    </div>
</body>
</html>
