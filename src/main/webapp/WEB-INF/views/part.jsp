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
<%@ include file="header.jsp" %>

<div id="wrapper">

    <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>


    <div class="container margin my-4">

        <h1><p class="text-success">Add Part <i class="fas fa-wrench"></i></p></h1>
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
                <form:input path="catalogNumber" type="text" name="catalogNumber" class="form-control"
                            id="exampleInputEmail"
                            placeholder="Fabory 45205.040.010"/>
                <form:errors path="catalogNumber" cssClass="error" element="div"/>
            </div>
            <div class="form-group">
                <form:hidden path="id"/><br>
                <button type="submit" class="btn btn-block btn-primary my-4">Add part!</button>
            </div>
        </form:form>

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
