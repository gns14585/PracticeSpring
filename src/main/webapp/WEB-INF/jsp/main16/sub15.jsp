<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-03
  Time: PM 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>model 에서 attribute 꺼내서 보여주기</h1>
    <ul>
        <c:forEach items="${foodList}" var="item">
            <li>${item}</li>
        </c:forEach>
    </ul>
</body>
</html>
