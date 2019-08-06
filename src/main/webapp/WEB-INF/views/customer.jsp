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
        <a class="nav-link" href="/user/edit"role="button">
          <span>-My Account</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/part/add"role="button">
          <span>-Parts</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/part/all"role="button">
          <span>-All Parts</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/customer/add"role="button">
          <span>-Customer</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/customer/all"role="button">
          <span>-All Customer</span>
        </a>
      </li>
    </ul>



    <div class="container margin my-4" >

      <h1><p class="text-success">Add Customer  <i class="fas fa-user-plus"></i></p></h1>
      <form:form method="post" modelAttribute="customer">
        <c:if test="${param.success != null}">


          <div class="alert alert-success" role="alert">

            Success!

          </div>
        </c:if>
        <div class="form-group">
          <label for="exampleInputFirstName">First Name:</label>
          <form:input path="firstName" type="text" name="firstName" class="form-control" id="exampleInputFirstName"
                      aria-describedby="emailHelp" placeholder="First Name"/>
          <form:errors path="firstName" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputPartName">Last Name:</label>
          <form:input path="lastName" type="text" name="LastName" class="form-control" id="exampleInputPartName"
                      aria-describedby="emailHelp" placeholder="Last Name"/>
          <form:errors path="lastName" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputPartName">Phone Number:</label>
          <form:input path="phoneNumber" type="text" name="phoneNumber" class="form-control" id="exampleInputPartName"
                      aria-describedby="emailHelp" placeholder="e.c 721 335 921"/>
            <form:errors path="phoneNumber" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail">Email:</label>
          <form:input path="email" type="text" name="email" class="form-control" id="exampleInputEmail"
                      placeholder ="@"/>
          <form:errors path="email" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail">NIP:</label>
          <form:input path="NIP" type="text" name="NIP" class="form-control" id="exampleInputEmail"
           placeholder ="e.c 1234567819"/>
          <form:errors path="NIP" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
        <label for="exampleInputEmail">PESEL:</label>
        <form:input path="PESEL" type="text" name="PESEL" class="form-control" id="exampleInputEmail"
                    placeholder ="e.c 11049811077"/>
        <form:errors path="PESEL" cssClass="error" element="div"/>
      </div>
        <div class="form-group">
          <form:hidden path="id" /><br>
          <button type="submit" class="btn btn-block btn-primary my-4">Add Customer!</button>
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
