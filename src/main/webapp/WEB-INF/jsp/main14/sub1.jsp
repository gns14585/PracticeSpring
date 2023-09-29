<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: AM 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> 암호 전송 </h1>
<form action="/main14/sub2" method="get">
    <div>
        id :
        <input type="text" name="id">
    </div>
    <div>
        password :
        <input type="password" name="password">
    </div>
    <button>전송</button>
</form>

<form action="/main14/sub2" method="post">
    <div>
        id :
        <input type="text" name="id">
    </div>
    <div>
        password :
        <input type="password" name="password">
    </div>
    <button>전송</button>
</form>
</body>
</html>
