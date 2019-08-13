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

        <h1><p class="text-success">Edit Profile <i class="fas fa-address-card"></i></p></h1>
        <form:form method="post" action="/user/edit" modelAttribute="user">
            <c:if test="${param.success != null}">


                <div class="alert alert-success" role="alert">

                    Success!

                </div>
            </c:if>
            <div class="form-group">
                <label for="exampleInputFirstName">First Name:</label>
                <form:input path="firstName" type="text" name="firstName" class="form-control"
                            id="exampleInputFirstName"
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
                <form:input path="email" readonly="true" type="text" name="email" class="form-control"
                            id="exampleInputEmail"
                            aria-describedby="emailHelp" placeholder="E-mail"/>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail">Password:</label>
                <form:input path="password" type="password" name="password" class="form-control" id="exampleInputEmail"
                            aria-describedby="emailHelp" placeholder="Password"/>
                <form:errors path="firstName" cssClass="error" element="div"/>
                <form:hidden path="id"/><br>
                <button type="submit" class="btn btn-block btn-primary my-4">Save changes!</button>
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

</body>

</html>
