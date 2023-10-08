<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-08
  Time: PM 5:36
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
    .active {
        background-color: gray;
        color: white;
    }
</style>
<table>
    <tr>
        <td>번호</td>
        <td>이름</td>
    </tr>
    <c:forEach items="${cusList}" var="i">
        <tr>
            <td>${i.id}</td>
            <td>${i.name}</td>
        </tr>
    </c:forEach>
</table>

<a href="/main22/sub3?page=${prevPageNumber}">이전</a>
<c:forEach begin="${leftPageNumber}" end="${rightPageNumber}" var="pageNumber">
    <a
            <c:if test="${currentPage == pageNumber}">
                class = 'active'
            </c:if>
            href="/main22/sub3?page=${pageNumber}">${pageNumber}</a>
</c:forEach>
<a href="/main22/sub3?page=${nextPageNumber}">다음</a>
</body>
</html>
