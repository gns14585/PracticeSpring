<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
localhost:8080/main11/sub2?dan=2
구구단 2단 출력

localhost:8080/main11/sub2?dan=2
구구단 3단 출력

--%>
<%--
<c:if test="${param.dan >= 2 && param.dan <= 9}" var="i">
    <h1>구구단 ${i}단</h1>
    <c:forEach begin="1" end="9" var="item">
        <p>${param.dan} * ${item} = ${param.dan * item}</p>
    </c:forEach>
</c:if>
<c:if test="${! i}">
    <p>다시 입력해주시기 바랍니다.</p>
</c:if>
--%>
<c:choose>
    <c:when test="${param.dan >= 2 && param.dan <= 9}">
        <h1>구구단 ${param.dan}단</h1>
        <c:forEach begin="1" end="9" var="item">
            <p>${param.dan} * ${item} = ${param.dan * item}</p>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <p>다시 입력해주시기 바랍니다.</p>
    </c:otherwise>
</c:choose>



</body>
</html>
