<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: PM 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>글 목록</h1>
  <table>
    <tr>
      <th>id</th>
      <th>제목</th>
    </tr>
    <c:forEach items="${postList}" var="post" varStatus="status">
      <tr>
        <td>${status.index}</td>
        <td>
          <a href="/main17/view?id=${status.index}">
              ${post.title}
          </a>
        </td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
