<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add user info</h2>
<br>
<form:form action="saveUser" modelAttribute="user">

    <form:hidden path="id"/>

    Name <form:input path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <br>
    Department <form:input path="department"/>
    <br>
    Salary <form:input path="salary"/>

    <input type="submit" VALUE="OK">
</form:form>
</body>
</html>
