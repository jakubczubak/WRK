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
<h2>Show BrakeCaliper</h2>
<table>
    <tr>
        <th>Part Name:</th>
        <th>Part Quantity:</th>
    </tr>
    <c:forEach items="${contactForm.partName}" var="contactMap"
               varStatus="status">
        <tr>
            <td>${contactMap.key}</td>
            <td>${contactMap.value}</td>
        </tr>
    </c:forEach>
</table>
<br />
<input type="button" value="Back" onclick="javascript:history.back()" />
</body>
</html>
