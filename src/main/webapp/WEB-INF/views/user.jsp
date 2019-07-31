<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>WRK Brakes</title>
  <!-- Custom styles for this template-->
  <link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet" type="text/css">
  <script src="https://kit.fontawesome.com/c395dd8104.js"></script>
</head>

<body id="page-top">
<!-- NAVBAR -->
  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
    <a class="navbar-brand mr-1" href="/">WRK Brakes   <i class="fas fa-car"></i></a>
    <span style = "margin-left:auto" class="navbar-brand">  <i class="far fa-user" style="color: white"></i> ${remoteUser}</span>
    <form class="navbar-form " method = post action="/logout">
      <button type="submit" class ="btn btn-success">Logout  <i class="fas fa-sign-out-alt"></i></button>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    </form>
  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <span class="nav-link">MENU:</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/"role="button">
          <span>-My Account</span>
        </a>
      </li>
    </ul>



    <div class="container margin my-4" >

      <h1><p class="text-success">Edit Profile  <i class="fas fa-address-card"></i></p></h1>
<form:form method="post" action="/user/edit" modelAttribute="user">
    <c:if test="${param.success != null}">


        <div class="alert alert-success" role="alert">

            Success!

        </div>
    </c:if>
  <div class="form-group">
    <label for="exampleInputFirstName">First Name:</label>
  <form:input path="firstName" type="text" name="firstName" class="form-control" id="exampleInputFirstName"
                aria-describedby="emailHelp" placeholder="First name"/>
    <form:errors path="firstName" cssClass="error" element="div"/>
  </div>
  <div class="form-group">
    <label for="exampleInputLastName">Last Name:</label>
    <form:input path="lastName" type="text" name="lastName" class="form-control" id="exampleInputLastName"
           aria-describedby="emailHelp" placeholder="Last name"/>
    <form:errors path="firstName" cssClass="error" element="div"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail">Contact e-mail:</label>
    <form:input path="email" readonly="true" type="text" name="email" class="form-control" id="exampleInputEmail"
           aria-describedby="emailHelp" placeholder="E-mail"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail">Password:</label>
    <form:input path="password"  type="password" name="password" class="form-control"  id="exampleInputEmail"
           aria-describedby="emailHelp" placeholder="Password"/>
    <form:errors path="firstName" cssClass="error" element="div"/>
    <form:hidden path="id" /><br>
    <button type="submit" class="btn btn-block btn-primary my-4">Save changes!</button>
  </div>
</form:form>

    </div>

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Coder's Lab finish project by J.Czubak</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->



  </div>
  <!-- /#wrapper -->



  </div>

</body>

</html>
