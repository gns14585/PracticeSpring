<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-04
  Time: PM 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    table {
        text-align: center;
        border: 1px solid black;
        border-collapse: collapse;
    }
    tr:first-child {
        background-color: #eeeeee;
        font-weight: bold;
        border: 1px solid black;
    }

    td {
        border: 1px solid black;
    }
</style>
<h1>고객 목록</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>CITY</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${customer}" var="i">
        <tr>
            <td>${i.id}</td>
            <td>${i.name}</td>
            <td>${i.city}</td>
            <td>${i.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
