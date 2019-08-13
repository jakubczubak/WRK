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
        <h3>${contactForm.name}</h3>
        <table class="table table-dark">
            <thead class="thead-dark">
            <tr>
                <th>Part Name:</th>
                <th>Part Quantity:</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${contactForm.partName}" var="contactMap"
                       varStatus="status">
                <tr>
                    <td>${contactMap.key}</td>
                    <td>${contactMap.value}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <br/>
        <input type="button" class="btn btn-warning btn-block" value="Back" onclick="javascript:history.back()"/>
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

