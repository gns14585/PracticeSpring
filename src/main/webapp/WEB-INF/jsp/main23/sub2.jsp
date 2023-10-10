<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-10
  Time: PM 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>고객명 검색</h4>
<form action="">
  검색어
  <input type="text" name="k" placeholder="검색어를 입력해주세요" value="${keyword}">
  <button>검색</button>
</form>
<hr>
<ul>
  <c:forEach items="${nameList}" var="i">
    <li>${i}</li>
  </c:forEach>
</ul>
</body>
</html>
