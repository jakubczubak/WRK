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



    <div class="container margin my-4" >
        <div id="content-wrapper">
            <h1><p class="text-success">New order   <i class="fas fa-cart-plus"></i></p></h1>
    <form:form method="post" modelAttribute="order">

            <div class="form-group">
                <label for="customer">Select customer:</label>
                <form:select path="customer.id" items="${customers}"
                             itemValue="id" itemLabel="fullName" id ="customer" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="brakecaliper">Select brake caliper:</label>
                <form:select path="brakeCaliper.id" items="${brakeCalipers}"
                             itemValue="id" itemLabel="name" id ="brakecaliper" class="form-control"/>
            </div>
        <div class="form-group">
            <label for="carBrand">Car Brand:</label>
            <form:input path="carBrand"  id="carBrand" cssClass="form-control"></form:input>

        </div>
        <div class="form-group">
            <label for="carModel">Car Model:</label>
            <form:input path="carModel"  id="carModel" cssClass="form-control"></form:input>

        </div>
        <div class="form-group">
            <label for="axies">Axis:</label><br>
            <form:radiobuttons items="${axies}" path="axies" id="axies" />
        </div>
        <label for="checkboxes">Select galvanic coating:</label>
           <div class="form-group" id="checkboxes" >
               <c:forEach var="part" items="${galvanicCoating}">
                   <form:checkbox path="galvanicCoating" cssClass="custom-checkbox" value="${part}"></form:checkbox>${part}<br>
               </c:forEach>
           </div>
            <div class="form-group">
                <label for="color">Color:</label>
                <form:input path="color" id="color" cssClass="form-control"></form:input>

            </div>
            <div class="form-group">
                <label for="logo">Logo:</label>
                <form:input path="logo" id="logo" cssClass="form-control"></form:input>

            </div>
        <div class="form-group">
            <label for="brakeDisc">Brake disc:</label>
            <form:input path="brakeDisc" id="brakeDisc" cssClass="form-control"></form:input>

        </div>
            <div class="form-group">
                <label for="bell">Bell:</label>
                <form:input path="bell" id="bell" cssClass="form-control"></form:input>

            </div>
            <div class="form-group">
                <label for="adapter">Adapter:</label>
                <form:input path="adapter"  id="adapter" cssClass="form-control"></form:input>

            </div>
            <div class="form-group">
                <label for="brakePads">BreakPads:</label>
                <form:input path="brakePads"  id="brakePads" cssClass="form-control"></form:input>

            </div>
        <div class="form-group">
            <label for="brakeLines">Brake lines:</label>
            <form:input path="brakeLines"  id="brakeLines" cssClass="form-control"></form:input>

        </div>

        <div class="form-group">
            <label for="exampleFormControlTextarea1">Additional information:</label>
            <form:textarea  path="details" class="form-control" id="exampleFormControlTextarea1" rows="3"></form:textarea>
        </div>
            <form:hidden path="id"></form:hidden>
            <button type="submit" class="btn btn-primary btn-block">ADD ORDER<i class="fas fa-plus"></i></button>


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

</body>

</html>
