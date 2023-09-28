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
<c:if test="${(param.dan >= 2) && (param.dan <= 9)}" var="ite">

    <h4>구구단 ${param.dan}단</h4>
    <c:forEach begin="1" end="9" var="i">
        <p>${param.dan} * ${i} = ${param.dan * i}</p>
    </c:forEach>

</c:if>
<c:if test="${! ite}">

    <p>다시 입력해주시기 바랍니다.</p>
</c:if>

</body>
</html>
