<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kuba
  Date: 09.08.19
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add BrakeCaliper</h2>
<form:form method="post" modelAttribute="contactForm">
    Brake Caliper name: <form:input path="name" name="name" ></form:input>
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
</body>
</html>
