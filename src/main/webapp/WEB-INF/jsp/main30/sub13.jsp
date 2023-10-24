<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-22
  Time: AM 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회</h3>
<form action="/main30/sub13">
    <input type="text" name="id" placeholder="직원번호">
    <button>조회</button>
</form>
<hr>
<div>
    <h3>
        ${message}
    </h3>
</div>

<h3>직원 수정</h3>
<form action="/main30/sub14" method="post">
    <div>
        <input type="text" name="id" value="${employee.id}" readonly>
    </div>
    <div>
        <input type="text" name="lastName" value="${employee.lastName}">
    </div>
    <div>
        <input type="text" name="firstName" value="${employee.firstName}">
    </div>
    <div>
        <input type="date" name="birthDate" value="${employee.birthDate}">
    </div>
    <div>
        <input type="text" name="photo" value="${employee.photo}">
    </div>
    <div>
        <textarea name="notes" id="" cols="30" rows="10">${employee.notes}</textarea>
    </div>
    <div>
        <button>전송</button>
    </div>

</form>
</body>
</html>
