<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-08
  Time: PM 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <c:forEach begin="1" end="${lastPageNumber}" var="pageNumber">
        <a href="/main22/sub2?page=${pageNumber}">${pageNumber}</a>
    </c:forEach>
</div>
<table>
    <tr>
        <td>번호</td>
        <td>이름</td>
        <td>주소</td>
        <td>도시</td>
        <td>나라</td>
    </tr>
    <c:forEach items="${supplierList}" var="pageNumber">
        <tr>
            <td>${pageNumber.id}</td>
            <td>${pageNumber.name}</td>
            <td>${pageNumber.address}</td>
            <td>${pageNumber.city}</td>
            <td>${pageNumber.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
