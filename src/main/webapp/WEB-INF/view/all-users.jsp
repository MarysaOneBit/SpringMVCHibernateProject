<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>All Users</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>

    </tr>
    <c:forEach var="user" items="${allUsers}">
       <c:url var = "updatedButton" value="/updatedInfo">
           <c:param name = "userId" value="${user.id}"/>
       </c:url>

        <c:url var = "deleteButton" value="/deleteUser">
            <c:param name = "userId" value="${user.id}"/>
        </c:url>
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.department}</td>
            <td>${user.salary}</td>
            <td>
                <input type="submit" value="Update"
                       onclick="window.location.href='${updatedButton}'"/>
                <input type="submit" value="Delete"
                       onclick="window.location.href='${deleteButton}'"/>
            </td>



        </tr>
    </c:forEach>

</table>
<br>
<input type="button" value="Add" onclick="window.location.href='addNewUser'">

</body>
</html>
