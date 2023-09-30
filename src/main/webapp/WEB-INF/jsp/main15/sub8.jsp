<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: PM 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>선택하신 음식 목록</h1>
<ul>
    <c:forEach items="${foodList}" var="item">
        <li>${item}</li>
    </c:forEach>
</ul>
<a href="/main15/sub9">다른 페이지에서 음식목록 확인</a>
</body>
</html>
