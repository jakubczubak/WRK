<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kuba
  Date: 21.08.19
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="task">
    <div>
        <label for="taskName">Task Name</label>
        <form:input path="taskName" id="taskName"></form:input>
    </div>
    <div>
        <label for="taskDescription">Task Description</label>
        <form:textarea path="taskDescription"></form:textarea>
        <form:hidden path="id"></form:hidden>
    </div>

    <button type="submit">Add new task</button>
</form:form>
</body>
</html>
