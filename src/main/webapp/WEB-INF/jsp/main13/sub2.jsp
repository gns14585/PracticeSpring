<%--
  Created by IntelliJ IDEA.
  User: 이정훈
  Date: 2023-09-29
  Time: PM 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main13/sub3">
    <%--div*10>label[for=input$]>lorem1^input[type][name=param$][id=input$]--%>
        <div>
            <label for="input1">Lorem.</label>
            <input type="text" name="param1" id="input1">
        </div>
        <div>
            <label for="input2">Sed.</label>
            <input type="" name="param2" id="input2">
        </div>
        <div>
            <label for="input3">Est.</label>
            <input type="" name="param3" id="input3">
        </div>
        <div>
            <label for="input4">Qui.</label>
            <input type="" name="param4" id="input4">
        </div>
        <div>
            <label for="input5">Neque.</label>
            <input type="" name="param5" id="input5">
        </div>
        <div>
            <label for="input6">Adipisci.</label>
            <input type="radio" name="param6" id="input6">
        </div>
        <div>
            <label for="input7">Rerum.</label>
            <input type="radio" name="param6" id="input7">
        </div>
        <div>
            <label for="input8">Possimus.</label>
            <input type="checkbox" name="param8" value="pizza" id="input8">
        </div>
        <div>
            <label for="input9">Praesentium?</label>
            <input type="checkbox" name="param8" value="melon" id="input9">
        </div>
        <div>
            <label for="input10">Consequatur.</label>
            <input type="checkbox" name="param8" value="coffee" id="input10">
        </div>
        <button>전송</button>
</form>
</body>
</html>
