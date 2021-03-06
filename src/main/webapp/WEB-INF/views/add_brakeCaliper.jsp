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
</head>

<body id="page-top">
<!-- NAVBAR -->
<%@ include file="header.jsp" %>

<div id="wrapper">

    <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>


    <div class="container margin my-4">
        <div id="content-wrapper">
            <h1><p class="text-primary">Add Brake Caliper <i class="fas fa-plus"></i></p></h1>
            <form:form cssClass="form-group" method="post" modelAttribute="contactForm">
                <%--<h3>Name:</h3> <form:input path="name" name="name" placeholder="10.6D.356x32" ></form:input>--%>


                <div class="form-group ">
                    <label for="name">Name:</label>
                    <form:input path="name" type="text" class="form-control" id="name"
                                placeholder="name e.c. 10.6D.356.32"/>
                    <form:errors path="name" cssClass="error" element="div"/>
                </div>


                <form:hidden path="id" name="id"></form:hidden>

                <table class="table table-striped" style="margin-top: 10px">
                    <thead class="thead-dark">
                    <tr>
                        <th>Part Name:</th>
                        <th>Part Quantity:</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${contactForm.partName}" var="contactMap" varStatus="status">
                        <tr>
                            <td>${contactMap.key}</td>
                            <td><input name="partName['${contactMap.key}']" value="${contactMap.value}"/></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <button type="submit" class="btn btn-block btn-primary">Save</button>

            </form:form>
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
