<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-03
  Time: PM 6:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>음식 리스트</h1>
<c:forEach items="${foodList}" var="item">
    <p>${item}</p>
</c:forEach>
<a href="/main15/sub9">다른 페이지에서 보기</a>
</body>
</html>
