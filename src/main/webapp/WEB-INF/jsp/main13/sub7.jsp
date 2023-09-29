<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-30
  Time: AM 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
public class MyDto12 {
private Integer id;
private String name;
private String address;
private LocalDateTime schedule;
private List<String> totos;
--%>
<form action="/main13/sub8">
    <div>
        <label for="input1">id</label>
        <input type="text" name="id" id="input1">
    </div>
    <div>
        <label for="input2">name</label>
        <input type="text" name="name" id="input2">
    </div>
    <div>
        <label for="input3">address</label>
        <input type="text" name="address" id="input3">
    </div>
    <div>
        <label for="input4">schedule</label>
        <input type="datetime-local" name="schedule" id="input4">
    </div>
    <div>
        <label for="input5">영화</label>
        <input type="checkbox" name="totos" id="input5" value="movie">
    </div>
    <div>
        <label for="input6">독서</label>
        <input type="checkbox" name="totos" id="input6" value="reading">
    </div>
    <div>
        <label for="input7">달리기</label>
        <input type="checkbox" name="totos" id="input7" value="run">
    </div>
    <button>전송</button>
</form>

</body>
</html>
