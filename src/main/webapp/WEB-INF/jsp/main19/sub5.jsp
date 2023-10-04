<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-04
  Time: PM 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>상품 목록</h1>
<table>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    <c:forEach items="${productList}" var="prod">
        <tr>
            <td>${prod.pid}</td>
            <td>${prod.productName}</td>
            <td>${prod.unit}</td>
            <td>${prod.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
