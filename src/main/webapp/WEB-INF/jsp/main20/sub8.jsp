<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-05
  Time: PM 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>해당 가격대의 상품목록</h1>
<c:forEach items="${proname}" var="i">
    <p>${i}</p>
</c:forEach>
</body>
</html>
