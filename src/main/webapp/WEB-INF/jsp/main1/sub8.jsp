<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-25
  Time: PM 6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${param.age >= 20}">
        <p>투표 가능</p>
    </c:when>
    <c:when test="${param.age < 20 && param.age > 0}">
        <p>투표 불가</p>
    </c:when>
    <c:otherwise>
        <p>age를 다시 입력해주세요</p>
    </c:otherwise>
</c:choose>
</body>
</html>