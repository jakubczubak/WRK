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
        <div class="card">
            <div class="card-header">
                <i class="fas fa-info-circle"></i>
                Order details:
            </div>
            <c:if test="${existOrder.finish}">
                <div class="btn btn-primary" role="alert">
                    DONE
                </div>
            </c:if>
            <c:if test="${existOrder.finish==false}">
                <div class="btn btn-warning" role="alert">
                    IN PROCESS
                </div>
            </c:if>
            <div class="card-body">
                <ul class="list-group ">
                    <li class="list-group-item">Customer: <b>${existOrder.customer.fullName}</b></li>
                    <li class="list-group-item">Car: <b>${existOrder.car}</b></li>
                    <li class="list-group-item">Axie: <b>${existOrder.axies}</b></li>
                    <li class="list-group-item">Brake caliper: <b>${existOrder.brakeCaliper.name}</b></li>
                    <li class="list-group-item">Brake disc: <b>${existOrder.brakeDisc}</b></li>
                    <li class="list-group-item">Bell: <b>${existOrder.bell}</b></li>
                    <li class="list-group-item">Adapter: <b>${existOrder.adapter}</b></li>
                    <li class="list-group-item">Color: <b>${existOrder.color}</b></li>
                    <li class="list-group-item">Galvanic coating: <b>${existOrder.galvanicCoating}</b></li>
                    <li class="list-group-item">Logo: <b>${existOrder.logo}</b></li>
                    <li class="list-group-item">Brake pads: <b>${existOrder.brakePads}</b></li>
                    <li class="list-group-item">Brake lines: <b>${existOrder.brakeLines}</b></li>
                    <li class="list-group-item">Additional information: <b>${existOrder.details}</b></li>
                    <li class="list-group-item"><a href="/">
                        <button type="button" class="btn btn-primary">Back</button>
                    </a>
                        <a href="/order/edit/${existOrder.id}">
                            <button type="button" class="btn btn-warning">Edit</button>
                        </a></li>

                </ul>


            </div>
        </div>

    </div>

</div>


<!-- Sticky Footer -->
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
