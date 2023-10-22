<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-22
  Time: AM 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 조회</h3>
<form action="/main30/sub15">
    <input type="text" name="id" placeholder="고객 번호">
    <button>조회</button>
</form>
<hr>
<div>
    <h3>
        ${message}
    </h3>
</div>

<form action="/main30/sub16" method="post">
    <h3>고객 수정</h3>
    <div>
        <input type="text" name="id" value="${customer.id}" readonly>
    </div>
    <div>
        <input type="text" name="name" value="${customer.name}">
    </div>
    <div>
        <input type="text" name="contactName" value="${customer.contactName}">
    </div>
    <div>
        <input type="text" name="address" value="${customer.address}">
    </div>
    <div>
        <input type="text" name="city" value="${customer.city}">
    </div>
    <div>
        <input type="text" name="postalCode" value="${customer.postalCode}">
    </div>
    <div>
        <input type="text" name="country" value="${customer.country}">
    </div>
    <div>
        <input type="submit" value="전송">
    </div>

</form>

</body>
</html>
