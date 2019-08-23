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


    <div class="container">
        <div id="content-wrapper">
            <h1><p class="text-success">Add Customer <i class="fas fa-user-plus"></i></p></h1>
            <form:form method="post" modelAttribute="customer">
                <c:if test="${param.success != null}">


                    <div class="alert alert-success" role="alert">

                        Success!

                    </div>
                </c:if>
                <div class="form-group">
                    <label for="exampleInputFirstName">First Name:</label>
                    <form:input path="firstName" type="text" name="firstName" class="form-control"
                                id="exampleInputFirstName"
                                aria-describedby="emailHelp" placeholder="First Name"/>
                    <form:errors path="firstName" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPartName">Last Name:</label>
                    <form:input path="lastName" type="text" name="LastName" class="form-control"
                                id="exampleInputPartName"
                                aria-describedby="emailHelp" placeholder="Last Name"/>
                    <form:errors path="lastName" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPartName">Company Name:</label>
                    <form:input path="companyName" type="text" name="companyName" class="form-control"
                                id="exampleInputPartName"
                                aria-describedby="emailHelp" placeholder="Company Name"/>
                    <form:errors path="companyName" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPartName">Phone Number:</label>
                    <form:input path="phoneNumber" type="text" name="phoneNumber" class="form-control"
                                id="exampleInputPartName"
                                aria-describedby="emailHelp" placeholder="e.c 721 335 921"/>
                    <form:errors path="phoneNumber" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail">Email:</label>
                    <form:input path="email" type="text" name="email" class="form-control" id="exampleInputEmail"
                                placeholder="@"/>
                    <form:errors path="email" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail">NIP:</label>
                    <form:input path="NIP" type="text" name="NIP" class="form-control" id="exampleInputEmail"
                                placeholder="e.c 1234567819"/>
                    <form:errors path="NIP" cssClass="error" element="div"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail">PESEL:</label>
                    <form:input path="PESEL" type="text" name="PESEL" class="form-control" id="exampleInputEmail"
                                placeholder="e.c 11049811077"/>
                    <form:errors path="PESEL" cssClass="error" element="div"/>
                </div>

                <div class="form-group">
                    <form:hidden path="id"/><br>
                    <button type="submit" class="btn btn-block btn-primary my-4">Add Customer!</button>

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
