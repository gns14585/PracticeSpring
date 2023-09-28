<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>el 비교연산자</h3>
    <h4><</h4>
    <p>${a} < ${b} = ${a < b}</p>

    <h4> > </h4>
    <p>${a} > ${b} = ${a > b}</p>

    <hr>
    <p>${c > d}</p>
    <p>${c < d}</p>
    <p>${c >= d}</p>
    <p>${c <= d}</p>
    <p>${c == d}</p>
    <p>${c != d}</p>

    <hr>
    <p>${e > f}</p>
    <p>${e > g}</p>

    <hr>
    <h3>el논리 연산자</h3>
    <h4>&& (and), || (or)</h4>
    <p>\${true && true} : ${true && true}</p>
    <p>\${true && false} : ${true && false}</p>
    <p>\${false && true} : ${false && true}</p>
    <p>\${false && false} : ${false && false}</p>

    <hr>
    <h4>|| (or)</h4>
    <p>\${true || true} : ${true || true}</p>
    <p>\${true || false} : ${true || false}</p>
    <p>\${false || true} : ${false || true}</p>
    <p>\${false || false} : ${false || false}</p>

    <hr>
    <h4>! (not)</h4>
    <p>\${! true } : ${! true}</p>
    <p>\${! false } : ${! false}</p>
    <p>\${not true } : ${not true}</p>
    <p>\${not false } : ${not false}</p>












</body>
</html>
