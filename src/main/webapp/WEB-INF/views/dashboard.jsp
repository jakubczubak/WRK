<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%@ include file="header.jsp" %>

<div id="wrapper">

    <%@ include file="sidebar.jsp" %>

    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Overview</li>

            </ol>

            <!-- Icon Cards-->
            <div class="row">
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-primary o-hidden h-100">
                        <div class="card-body">
                            <div class="card-body-icon">
                                <i class="fas fa-shopping-basket"></i>
                            </div>
                            <div class="mr-5">${orderSize} Orders</div>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" href="/order/all">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-warning o-hidden h-100">
                        <div class="card-body">
                            <div class="card-body-icon">
                                <i class="fas fa-fw fa-list"></i>
                            </div>
                            <div class="mr-5">11 New Tasks</div>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" href="#">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-success o-hidden h-100">
                        <div class="card-body">
                            <div class="card-body-icon">
                                <i class="fas fa-fw fa-shopping-cart"></i>
                            </div>
                            <div class="mr-5">${notFinishOrderSize} New Orders</div>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" href="/order/activeOrders">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-danger o-hidden h-100">
                        <div class="card-body">
                            <div class="card-body-icon">
                                <i class="fas fa-exclamation-triangle"></i>
                            </div>
                            <div class="mr-5">13 Complaint</div>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" href="#">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                </span>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Sticky Footer -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    WRK Brakes orders
                </div>
                <div class="card-body">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">Customer</th>
                            <th scope="col">Car</th>
                            <th scope="col">Axie</th>
                            <th scope="col">Brake Caliper</th>
                            <th scope="col">Brake Disc</th>
                            <th scope="col">Adapter</th>
                            <th scope="col">Bell</th>
                            <th scope="col">Color</th>
                            <th scope="col">Brake Pads</th>
                            <th scope="col"></th>


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
                                <td>${order.adapter}</td>
                                <td>${order.bell}</td>
                                <td>${order.color}</td>
                                <td>${order.brakePads}</td>

                                <td>
                                    <a href="/order/details/${order.id}">
                                        <button type="button" class="btn btn-primary"><i class="fas fa-info"></i>
                                        </button>
                                    </a>
                                    <a href="/order/edit/${order.id}">
                                        <button type="button" class="btn btn-warning"><i class="fas fa-edit"></i>
                                        </button>
                                    </a>
                                    <a href="/order/finish/${order.id}">
                                        <button type="button" class="btn btn-success"><i
                                                class="fas fa-check-circle"></i></button>
                                    </a>

                                </td>

                            </tr>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            </div>


            <%@ include file="footer.jsp" %>
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->


</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>

</html>
