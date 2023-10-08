<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-09
  Time: AM 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>address</td>
        <td>city</td>
        <td>country</td>
    </tr>
    <c:forEach items="${custList}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.address}</td>
            <td>${item.city}</td>
            <td>${item.country}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <c:if test="${prevPageNumber > 0}">
        <a href="/main23/sub1?page=${firstPageNumber}">처음</a>
        <a href="/main23/sub1?page=${prevPageNumber}">이전</a>
    </c:if>
    <c:forEach begin="${leftPageNumber}" end="${rightPageNumber}" var="pageNumber">
        <a href="/main23/sub1?page=${pageNumber}">${pageNumber}</a>
    </c:forEach>
  <c:if test="${nextPageNumber <= lastPageNumber}">
    <a href="/main23/sub1?page=${nextPageNumber}">다음</a>
    <a href="/main23/sub1?page=${lastPageNumber}">마지막</a>
  </c:if>
</div>


</body>
</html>
