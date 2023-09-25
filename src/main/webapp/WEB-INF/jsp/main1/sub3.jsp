<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-25
  Time: PM 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.dan >= 2 && param.dan <= 9}" var="okDan">
    <c:forEach begin="1" end="9" var="i">
        <p>${param.dan} * ${i} = ${param.dan * i}</p>
    </c:forEach>
</c:if>
<c:if test="${! okDan}">
    <p>2 ~ 9 단 입력해주시기 바랍니다.</p>
</c:if>
</body>
</html>
