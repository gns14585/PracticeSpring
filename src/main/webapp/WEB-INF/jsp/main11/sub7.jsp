<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- /main11/sub7?show=true --%>
<%-- table 형식의 데이터 출력 --%>
<%--
    private Long id;
    private String firstName;
    private String lastName;
    private String className;
    private String phoneNumber;
    --%>
<c:choose>
    <c:when test="${param.show}">
        <table>
            <tr>
                <td>no</td>
                <td>id</td>
                <td>FirstName</td>
                <td>LastName</td>
                <td>className</td>
                <td>phoneNumber</td>
            </tr>
            <c:forEach items="${shows}" var="item" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td>${item.id}</td>
                    <td>${item.firstName}</td>
                    <td>${item.lastName}</td>
                    <td>${item.className}</td>
                    <td>${item.phoneNumber}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <p>값을 다시 입력해주시기 바랍니다.</p>
    </c:otherwise>
</c:choose>



<%-- /main11/sub7--%>
<%-- 파라미터를 입력해주세요. --%>
</body>
</html>
