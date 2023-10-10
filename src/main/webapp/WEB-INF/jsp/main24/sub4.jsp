<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-10
  Time: PM 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>새 직원 등록</h3>
<form action="/main24/sub4" method="post">
    <div>
        <input type="text" name="lastName" value="두식">
    </div>
    <div>
        <input type="text" name="firstName" value="김">
    </div>
    <div>
        <input type="date" name="birthDate" value="2002-02-02">
    </div>
    <div>
        <input type="text" name="photo" value="tkwls">
    </div>
    <div>
        <textarea name="notes" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
