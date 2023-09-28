<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>implicit el objects</h1>
    <p>${pageScope}</p>
    <p>${param}</p>
    <p>${header}</p>
    <hr>

    <h1>param el 객체</h1>
    <p>request parameter </p>

    <p>\${param.name} : ${param.name}</p>
    <p>\${param.age} : ${param.age}</p>
    <p>\${param.email} : ${param.email}</p>


</body>
</html>
