<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-09-26
  Time: PM 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main2/sub5" method="post">
    <h1>Post</h1>
    이름
    <input type="text" name="name">
    <br>
    주소
    <input type="text" name="address">

    <button>전송</button>

</form>
</body>
</html>
