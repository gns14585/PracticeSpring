<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-25
  Time: PM 7:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="9" var="i">
    <p>구구단 ${10-i}단</p>
    <c:forEach begin="1" end="9" var="j">
        <p>${10-i} * ${j} = ${(10-i) * j}</p>
    </c:forEach>
</c:forEach>
</body>
</html>
