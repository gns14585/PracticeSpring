<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jstl if tag</h1>
<c:if test="true">
    <p>출력😊</p>
</c:if>

<c:if test="false">
    <p>출력안됨 😒</p>
</c:if>

<hr>
<c:if test="${param.name eq 'son'}">
    <p>hello son</p>
</c:if>

<hr>
<h3>var 속성 : test의 연산결과 저장</h3>
<c:if test="${param.name eq 'son'}" var="isSon">
    <p>hello son</p>
</c:if>
<c:if test="${! isSon}">
    <p>다시 입력해주세요</p>
</c:if>
</body>
</html>
