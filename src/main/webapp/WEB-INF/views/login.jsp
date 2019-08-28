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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c395dd8104.js"></script>
</head>
<body class="d-flex justify-content-center">
<div class="col-lg-3">

    <div style="margin-top: 150px">
        <div style="margin-bottom: 60px" class="ml-xl-5">
            <img src="http://wrkbrakes.com/wp-content/uploads/2018/02/WRK-LOGO2.png">
        </div>
        <form method="post" action="/mylogin">
            <c:if test="${param.error != null}">

    </div>
    <div class="alert alert-danger" role="alert">

        Incorrect username or password!

    </div>
    </c:if>
    <c:if test="${param.logout != null}">

</div>
<div class="alert alert-success" role="alert">

    You are logged out.

</div>
</c:if>


<div class="col-auto">
    <label class="sr-only" for="inlineFormInputGroup">Email</label>
    <div class="input-group mb-2">
        <div class="input-group-prepend">
            <div class="input-group-text"><i class="fas fa-at"></i></div>
        </div>
        <input type="text" name="email" class="form-control" id="inlineFormInputGroup" placeholder="Username">
    </div>
</div>
<div class="col-auto">

    <label class="sr-only" for="inlineFormInputGroupPassword">Password</label>

    <div class="input-group mb-2">
        <div class="input-group-prepend">
            <div class="input-group-text"><i class="fas fa-lock"></i></div>
        </div>
        <input type="password" name="password" class="form-control" id="inlineFormInputGroupPassword"
               placeholder="Password">
    </div>
</div>
<div class="form-group">


    <button style="margin-top: 20px" type="submit" class="btn btn btn-primary btn-block">Log in</button>
    <a class="btn btn-success btn-block" href="/myregistration">Sign Up</a>


    </form>


</div>
</div>

</body>
</html>
