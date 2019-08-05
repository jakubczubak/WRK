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
    </ul>



    <div class="container margin my-4" >

      <h1><p class="text-success">Add Part  <i class="fas fa-wrench"></i></p></h1>
      <form:form method="post" modelAttribute="part">
        <c:if test="${param.success != null}">


          <div class="alert alert-success" role="alert">

            Success!

          </div>
        </c:if>
        <div class="form-group">
          <label for="exampleInputTypeOfPart">Type of part:</label>
          <form:input path="type" type="text" name="type" class="form-control" id="exampleInputTypeOfPart"
                      aria-describedby="emailHelp" placeholder="e.g screw"/>
          <form:errors path="type" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputPartName">Name of part:</label>
          <form:input path="name" type="text" name="name" class="form-control" id="exampleInputPartName"
                      aria-describedby="emailHelp" placeholder="e.g M10x1.25x80"/>
          <form:errors path="name" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputPartName">Quantity:</label>
          <form:input path="quantity" type="text" name="quantity" class="form-control" id="exampleInputPartName"
                      aria-describedby="emailHelp" placeholder="e.g 10x"/>
            <form:errors path="quantity" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail">Catalog Number:</label>
          <form:input path="catalogNumber" type="text" name="catalogNumber" class="form-control" id="exampleInputEmail"
           placeholder ="Fabory 45205.040.010"/>
          <form:errors path="catalogNumber" cssClass="error" element="div"/>
        </div>
        <div class="form-group">
          <form:hidden path="id" /><br>
          <button type="submit" class="btn btn-block btn-primary my-4">Add part!</button>
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
