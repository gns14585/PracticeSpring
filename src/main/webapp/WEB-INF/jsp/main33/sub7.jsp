<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-21
  Time: PM 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>여러 파일 업로드</h3>
<form action="/main33/sub8" method="post" enctype="multipart/form-data">
    <input type="file" name="myFiles" multiple>
    <input type="submit" value="전송">
</form>
</body>
</html>
