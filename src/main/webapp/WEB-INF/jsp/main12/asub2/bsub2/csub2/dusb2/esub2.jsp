<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>상대경로 .. 은 한 path 위</h3>
<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>
<form action="../..">
    <button>전송</button>
</form>

<form action="../dsub3">
    <button>전송</button>
</form>
<form action="../../csub3">
    <button>전송</button>
</form>
<form action="../../csub3/../bsub3">
    <button>전송</button>
</form>
</body>
</html>
