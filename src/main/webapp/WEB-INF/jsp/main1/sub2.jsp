<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-25
  Time: PM 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="2" end="9" var="i">
    <h3>구구단 ${i}단</h3>
    <c:forEach begin="1" end="9" var="j">
        <p>${i} * ${j} = ${i * j}</p>
    </c:forEach>
</c:forEach>
<hr>

<c:forEach begin="1" end="9" var="k">
    <h3>구구단 ${10-k}단</h3>
    <c:forEach begin="1" end="9" var="h">
        <p>${(10-k)} * ${h} = ${(10-k) * h}</p>
    </c:forEach>
</c:forEach>
</body>
</html>
