<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-03
  Time: PM 6:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Model </h1>
<c:forEach items="${items}" var="i">
    <p>${i}</p>
</c:forEach>

<h1>session</h1>
<c:forEach items="${sessionScope.items}" var="j">
    <p>${j}</p>
</c:forEach>
</body>
</html>
