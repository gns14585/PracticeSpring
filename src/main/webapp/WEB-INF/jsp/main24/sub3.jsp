<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-10
  Time: PM 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>공급자 입력</h3>
<form action="/main24/sub2" method="post">
    <div>
        공급자명
        <input type="text" name="supplierName">
    </div>
    <div>
        계약명
        <input type="text" name="contactName">
    </div>
    <div>
        주소
        <input type="text" name="address">
    </div>
    <div>
        도시
        <input type="text" name="city">
    </div>
    <div>
        국가
        <input type="text" name="country">
    </div>
    <div>
        전화번호
        <input type="text" name="phone">
    </div>
    <div>
        우편번호
        <input type="text" name="postalCode">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
