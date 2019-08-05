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

  <script>
    function confirmDelete(id, name) {
      if (confirm("Do you really want to delete " + name + "?")) {
        window.location.href = "/part/delete/" + id;
      }
    }
  </script>
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

<div id="content-wrapper">
  <table class="table table-striped table-dark">
    <thead class="thead-dark">
    <tr>
      <th scope="col">Part name</th>
      <th scope="col">Catalog number</th>
      <th scope="col">Quantity</th>
      <th scope="col">Delete/Edit</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="part" items="${partList}">
      <tr>
          <%--<th scope="row">1</th>--%>
        <td>${part.name}</td>
        <td>${part.catalogNumber}</td>
        <td>${part.quantity}</td>
        <td>
          <a href="#" onclick="confirmDelete(${part.id},'${part.name}')"><button type="button" class="btn btn-danger">Delete</button></a>
          <a href="/part/edit/${part.id}"><button type="button" class="btn btn-warning">Edit</button></a>
        </td>
      </tr>

      </tr>
    </c:forEach>
    </tbody>
  </table>
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