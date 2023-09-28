<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:choose>
        <c:when test="${param.age >= 20}">
            <p>투표 가능합니다.</p>
        </c:when>
        <c:when test="${param.age < 20 && param.age > 0}">
            <p>투표 불가합니다.</p>
        </c:when>
        <c:otherwise>
            <p>값을 다시 입력해주시기 바랍니다.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
