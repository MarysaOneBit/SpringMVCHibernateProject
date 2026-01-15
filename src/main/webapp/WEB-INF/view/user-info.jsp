<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Info</title>
</head>
<body>
<h2>User Info</h2>
<br>

<c:url var="actionUrl" value="/${formAction}"/>

<form:form action="${actionUrl}" modelAttribute="user" method="POST">
    <form:hidden path="id"/>
    Name <form:input path="name"/> <br>
    Surname <form:input path="surname"/> <br>
    Department <form:input path="department"/> <br>
    Salary <form:input path="salary"/> <br>
    <input type="submit" VALUE="OK">
</form:form>
</body>
</html>