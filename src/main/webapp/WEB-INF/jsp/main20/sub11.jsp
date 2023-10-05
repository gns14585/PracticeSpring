<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-05
  Time: PM 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>선택한 국가 목록</h1>
  <c:forEach items="${countryList}" var="item">
      <p>나라명 : ${item}</p>
  </c:forEach>
</body>
</html>
