<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jstl choose, when, otherwise tag</h1>
<c:choose>
  <%--when이 모두 true라면 처음 만나는 true 실행--%>
  <c:when test="${false}">
      <p>when 1</p>
  </c:when>
  <c:when test="${false}">
      <p>when 2</p>
  </c:when>
  <c:when test="${false}">
      <p>when 3</p>
  </c:when>
  <c:otherwise>
    <p>otherwise 태그 내용</p>
  </c:otherwise>
</c:choose>
</body>
</html>
