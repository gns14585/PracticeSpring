<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-24
  Time: PM 7:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    h1 {
        text-align: center;
    }
    table {
        border-collapse: collapse;
        text-align: center;
        width: 70%;
        margin: 0 auto;
    }

    tr:first-child {
        background-color: rgb(128, 128, 128);
        font-weight: bold;
    }

    tr td {
        border: 1px solid black;
        padding: 10px;
    }
</style>
<h1>Practice</h1>
<h1>Table</h1>
<table>
    <tr>
        <td>번호</td>
        <td>이름</td>
        <td>나이</td>
        <td>성별</td>
        <td>주소</td>
        <td>핸드폰번호</td>
    </tr>

    <c:forEach items="${Info}" var="item" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${item.name}</td>
            <td>${item.age}</td>
            <td>${item.gender}</td>
            <td>${item.address}</td>
            <td>${item.phoneNumber}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
