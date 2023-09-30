<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: PM 7:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>음식목록 재확인 페이지</h1>
<ul>
    <c:forEach items="${foodList}" var="item">
        <li>${foodList}</li>
    </c:forEach>
</ul>
<a href="/main15/sub7">음식 재선택 하기</a>
</body>
</html>
