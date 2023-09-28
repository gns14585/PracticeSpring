<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-28
  Time: PM 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>form 요소</h1>

<form action="">
    <input type="text" name="param1">
    <br>
    <input type="text" name="param2">
    <br>
    <%-- select(option), textarea --%>
    <button>전송</button>
</form>

<hr>

<form action="">
    <%--전송버튼 클릭시 ?name=lee&age=44&address=seoul&email=abc@gmail.com--%>
    <input type="text" name="name">
    <input type="text" name="age">
    <input type="text" name="address">
    <input type="text" name="email">
    <button>전송</button>
</form>

<hr>
<h3>action 속성 : request 파라미터들을 어디로 보낼지 결정</h3>
<form action="https://search.naver.com/search.naver">
    <input type="text" name="query">
    <br>
    <button>전송</button>
</form>

<form action="">
    <input type="text" name="q">
    <button>다음에서 검색</button>
</form>

<form action="/main12/sub2">
    <input type="text" name="email">
    <button>전송</button>
</form>

<form action="/main12/sub2">
    <input type="text" name="age">
    <button>전송</button>
</form>

<hr>
<h1>action 속성 값 : /도 아니고, protocol(scheme)이 아니면 현재 페이지의 상대경로</h1>
<h1>path(경로)에서 마지막 / 기준</h1>
<form action="/main12/sub2">
    <input type="text" name="email">
    <button>전송</button>
</form>

<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>
</body>
</html>
