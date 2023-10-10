<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-10-10
  Time: PM 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th {
            background-color: skyblue;
        }
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h4>직원 조회</h4>
<form action="">
    <div>
        검색조건
        <select name="t">
            <option value="lname" ${searchType == 'lname' ? 'selected' : ''}>Last Name</option>
            <option value="fname" ${searchType == 'fname' ? 'selected' : ''}>First name</option>
            <option value="notes" ${searchType == 'notes' ? 'selected' : ''}>Notes</option>
        </select>
    </div>
    <div>
        검색어
        <input type="text" name="k" value="${keyword}">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>

<hr>
<%--여기에 검색 결과 코드작성--%>
<table>
    <tr>
        <th>Last Name</th>
        <th>First Name</th>
        <th>Notes</th>
    </tr>
    <c:forEach items="${nameList}" var="i">
        <tr>
            <td>${i.lname}</td>
            <td>${i.fname}</td>
            <td>${i.notes}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
