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



    <div class="container margin my-4" >

        <h2>Add BrakeCaliper</h2>
        <form:form method="post" modelAttribute="contactForm">
            Brake Caliper name: <form:input path="name" name="name" ></form:input>
           <form:hidden path="id" name="id" ></form:hidden>
            <table>
                <tr>
                    <th>Part Name:</th>
                    <th>Part Quantity:</th>

                </tr>
                <c:forEach items="${contactForm.partName}" var="contactMap" varStatus="status">
                    <tr>
                        <td>${contactMap.key}</td>
                        <td><input name="partName['${contactMap.key}']" value="${contactMap.value}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <br/>

            <input type="submit" value="Save" />

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
