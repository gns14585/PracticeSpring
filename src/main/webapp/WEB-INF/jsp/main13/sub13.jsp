<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: AM 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>select 요소</h1>
<form action="/main13/sub14">
    <div>
        <select name="hobby" id="">
            <option value="soccer">축구</option>
            <option value="baseball">야구</option>
            <option value="basketball">농구</option>
        </select>
    </div>
    <div>
        <select name="food" multiple="">
            <option value="pizza">피자</option>
            <option value="coffee">커피</option>
            <option value="burger">버거</option>
            <option value="milk">우유</option>
            <option value="tanghuru">탕후루</option>
        </select>
    </div>

    <button>전송</button>
</form>
</body>
</html>
