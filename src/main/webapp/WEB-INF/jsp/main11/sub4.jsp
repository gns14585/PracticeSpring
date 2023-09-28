<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--요청파라미터 age--%>
<%--age가 20 이상일때--%>


<c:if test="${!empty param.age}">
    <c:if test="${param.age >= 20}" var="item">
        <p>투표 가능합니다.</p>
    </c:if>
    <c:if test="${! item}">
        <%--그렇지 않으면--%>
        <p>투표 불가합니다.</p>
    </c:if>
</c:if>
<c:if test="${empty param.age}">
    <p>값을 다시 입력해주세요</p>
</c:if>

</body>
</html>
