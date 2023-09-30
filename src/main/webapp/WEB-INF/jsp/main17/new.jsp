<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: PM 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>새 글 작성</h1>
<form method="post">
    <div>
        <label for="titleInput">제목</label>
        <input type="text" id="titleInput">
    </div>
    <div>
        <textarea name="body" cols="30" rows="10" placeholder="본문"></textarea>
    </div>
    <div>
        <button>전송</button>
    </div>
</form>
</body>
</html>
