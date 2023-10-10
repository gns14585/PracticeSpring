<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-10
  Time: PM 5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="">
    <div>
        검색 조건
        <select name="st">
            <option value="lname" ${searchType == 'lname' ? 'selected' : ''}>Last Name</option>
            <option value="fname" ${searchType == 'fname' ? 'selected' : ''}>First Name</option>
            <option value="notes" ${searchType == 'notes' ? 'selected' : ''}>Note</option>
        </select>
    </div>
    <div>
        검색어
        <input type="text" name="k" value="${keyword}" placeholder="검색어를 입력해주세요">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
<hr>
<table>
    <tr>
        <th>Last Name</th>
        <th>First Name</th>
        <th>Note</th>
    </tr>
    <c:forEach items="${cusList}" var="i">
        <tr>
            <td>${i.lastName}</td>
            <td>${i.firstName}</td>
            <td>${i.notes}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
