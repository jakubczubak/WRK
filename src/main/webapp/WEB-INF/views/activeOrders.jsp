<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
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
                window.location.href = "/order/delete/" + id;
            }
        }
    </script>
</head>

<body id="page-top">
<!-- NAVBAR -->
<%@ include file="header.jsp" %>

<div id="wrapper">

    <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>


    <div id="content-wrapper">
        <table class="table table-striped table-dark">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Customer</th>
                <th scope="col">Car</th>

                <th scope="col">Axie</th>
                <th scope="col">Brake Caliper</th>
                <th scope="col">Brake Disc</th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">STATUS</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="order" items="${orderList}">
                <tr>
                        <%--<th scope="row">1</th>--%>
                    <td>${order.customer.fullName}</td>
                    <td>${order.car}</td>
                    <td>${order.axies}</td>
                    <td>${order.brakeCaliper.name}</td>
                    <td>${order.brakeDisc}</td>

                    <td>
                        <a href="/order/details/${order.id}">
                            <button type="button" class="btn btn-primary">Details</button>
                        </a>
                    </td>

                    <td>
                        <a href="/order/finish/${order.id}">
                            <button type="button" class="btn btn-success"><i class="fas fa-check-circle"></i></button>
                        </a>
                        <a href="/order/notFinish/${order.id}">
                            <button type="button" class="btn btn-success"><i class="fas fa-check-circle"></i></button>
                        </a>
                    </td>
                    <td>
                        <a href="#" onclick="confirmDelete(${order.id},'${order.brakeCaliper.name}')">
                            <button type="button" class="btn btn-danger">Delete</button>
                        </a>
                        <a href="/order/edit/${order.id}">
                            <button type="button" class="btn btn-warning">Edit</button>
                        </a>
                    </td>
                    <td>
                        <c:if test="${order.finish}">
                            <div class="btn btn-primary" role="alert">
                                DONE
                            </div>
                        </c:if>
                        <c:if test="${order.finish==false}">
                            <div class="btn btn-warning" role="alert">
                                IN PROCESS
                            </div>
                        </c:if>
                    </td>
                </tr>

                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>


    <!-- Sticky Footer -->
    <%@ include file="footer.jsp" %>

</div>
<!-- /.content-wrapper -->


</div>
<!-- /#wrapper -->


</div>

</body>

</html>
