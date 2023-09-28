<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>el에서 사용 할 수 있는 연산자</h3>
    <h4>산술 연산자</h4>
    <h4>+, -, *, /, %</h4>
    <hr>
    <h5>+</h5>
    <p>${a} + ${b} = ${a + b}</p>
    <p>${c} + ${d} = ${c + d}</p>

    <h5>-</h5>
    <p>${a} - ${b} = ${a - b}</p>
    <p>${c} - ${d} = ${c - d}</p>

    <hr>
    <h5>*</h5>
    <p>${a} * ${b} = ${a * b}</p>
    <p>${c} * ${d} = ${c * d}</p>

    <hr>
    <h5>/ (div) : 나누기</h5>
    <p>${a} / ${b} = ${a / b}</p>
    <p>${c} / ${d} = ${c / d}</p>
    <p>${a} / ${b} = ${a div b}</p>
    <p>${c} / ${d} = ${c div d}</p>

    <hr>
    <h5>% : 나머지(modulo)</h5>
    <p>${b} % ${a} = ${b % a}</p>
    <p>${c} % ${a} = ${c % a}</p>
    <p>${d} % ${a} = ${d % a}</p>
    <p>${b} % ${a} = ${b mod a}</p>
    <p>${c} % ${a} = ${c mod a}</p>
    <p>${d} % ${a} = ${d mod a}</p>


    <hr>
    <h5>구구단 2단</h5>
    <c:forEach begin="1" end="9" var="i">
        <p>2 X ${i} = ${2 + i}</p>
    </c:forEach>

    <hr>
    <h5>구구단 2단 ~ 9단</h5>
    <c:forEach begin="2" end="9" var="i">
        <h4>구구단 ${i}단</h4>
        <c:forEach begin="1" end="9" var="j">
            <p>${i} X ${j} = ${i * j}</p>
        </c:forEach>
    </c:forEach>

    <hr>
    <h5>구구단 9단 ~ 2단</h5>
    <c:forEach begin="2" end="9" var="i">
        <h4>구구단 ${(10-i)+1}단</h4>
        <c:forEach begin="1" end="9" var="j">
            <p>${(10-i)+1} X ${j} = ${((10-i)+1) * j}</p>
        </c:forEach>
    </c:forEach>



</body>
</html>
