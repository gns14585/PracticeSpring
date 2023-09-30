<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: PM 8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>model 목록</h1>
<ul>
  <c:forEach items="${items}" var="i">
    <p>${i}</p>
  </c:forEach>
</ul>

<h1>session 목록</h1>
<ul>
  <c:forEach items="${sessionScope.items}" var="j">
    <li>${j}</li>
  </c:forEach>
</ul>
</body>
</html>
