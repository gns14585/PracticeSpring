<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-05
  Time: PM 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>국가</h1>
<c:forEach items="${custList}" var="i">
    <p>${i.country} : ${i.name}</p>
</c:forEach>

</body>
</html>
