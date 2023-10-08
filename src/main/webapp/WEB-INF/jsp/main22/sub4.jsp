<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-08
  Time: PM 6:52
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




    h1 , div {
        margin: 0 auto;
        width: 100%;
        text-align: center;
    }

    a {
        text-decoration: none;
        font-size: 10px;
    }

    a:visited {
        color: black;
    }
    .active {
        background-color: rgb(128, 128, 128);
        color: white;
    }

    table {
        margin: 0 auto;
        text-align: center;
        font-size: 13px;
        border: 1px solid black;
        border-collapse: collapse;
    }

    tr:first-child {
        background-color: greenyellow;
        font-weight: bold;
    }

    tr , td {
        border: 1px solid #eeeeee;
    }
</style>
<h1>고객 목록</h1>
<table>
    <tr>
        <td>번호</td>
        <td>이름</td>
        <td>주소</td>
        <td>도시</td>
        <td>나라</td>
    </tr>
    <c:forEach items="${custList}" var="i">
        <tr>
            <td>${i.id}</td>
            <td>${i.name}</td>
            <td>${i.address}</td>
            <td>${i.city}</td>
            <td>${i.country}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <c:if test="${prevPageNumber > 0}">
        <a href="/main22/sub4?page=${firstPageNumber}">처음</a>
        <a href="/main22/sub4?page=${prevPageNumber}">이전</a>
    </c:if>
    <c:forEach begin="${leftPageNumber}" end="${rightPageNumber}" var="pageNumber">
        <a
                <c:if test="${currentPage == pageNumber}">
                    class = "active"
                </c:if>
                href="/main22/sub4?page=${pageNumber}">${pageNumber}</a>
    </c:forEach>
    <c:if test="${nextPageNumber <= lastPageNumber}">
        <a href="/main22/sub4?page=${nextPageNumber}">다음</a>
        <a href="/main22/sub4?page=${lastPageNumber}">마지막</a>
    </c:if>
</div>
</body>
</html>
