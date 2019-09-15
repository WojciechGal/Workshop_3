<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 23.08.19
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello Welcome</h1>
<br>

<%@include file="header.jspf"%>

<a href="/solutionAdd">Dodaj rozwiązanie</a>

<br><br>

<table border="1">
    <tr>
        <th>Created</th>
        <th>Updated</th>
        <th>Description</th>
        <th>User</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.created}</td>
            <td>${solution.updated}</td>
            <td>${solution.description}</td>
            <td>${solution.user.username}</td>
            <td>
                <a href="/solutionUpdate?id=${solution.id}">update</a>
                <a href="/solutionDelete?id=${solution.id}">delete</a>


            </td>
        </tr>
    </c:forEach>


</table>
<%@include file="footer.jspf"%>
</body>
</html>
