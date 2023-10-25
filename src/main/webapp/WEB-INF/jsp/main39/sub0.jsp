<%--
  Created by IntelliJ IDEA.
  User: 사용자
  Date: 2023-10-25
  Time: PM 6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<div>
    <button onclick="ajax1()">button1</button>
    <script>
        function ajax1() {
            axios.get("/main39/sub1")
                .then(() => console.log("성공"))
                .catch(() => console.log("실패"))
        }
    </script>
</div>

<div>
    <button onclick="ajax2()">button2</button>
    <script>
        function ajax2() {
            axios.get("/main39/sub2")
                .then(() => console.log("성공"))
                .catch(() => console.log("실패"))
        }
    </script>
</div>

<div>
    <button onclick="ajax3()">button3</button>
    <script>
        function ajax3() {
            axios.get("/main39/sub2")
                .catch(function (error) {
                    console.log(error);
                    console.log(error.response.status);
                    let status = error.response.status;
                    if (status >= 400 && status < 500) {
                        console.log("요청이 잘못되었습니다.")
                    } else if (status >= 500 && status <= 599) {
                        console.log("서버 오류 발생")
                    }
                })
        }
    </script>
</div>

<div>
    <button onclick="ajax4()">button4</button>
    <p id="result1"></p>
    <script>
        function ajax4() {
            axios.get("/main39/sub3")
                .catch((error) => {
                    console.log(error)
                    console.log(error.response.status)
                    let code = error.response.status;
                    if (code >= 400 && code < 500) {
                        document.getElementById("result1").innerHTML = "잘못된 요청"
                    } else if (code >= 500) {
                        document.getElementById("result1").innerHTML = "서버 에러"
                    }
                });
        }
    </script>
</div>

<div>
    <input type="text" id="input1">
    <button onclick="ajax5()">button5</button>
    <script>
        function ajax5() {
            const pid = document.getElementById("input1").value;
            axios.get("/main39/sub4?id=" + pid)
                .then(response => response.data)
                .then(data => console.log(data))
                .catch(error => console.log(error))
        }
    </script>
</div>

<div>
    <button onclick="ajax6()">button6</button>
    <script>
        function ajax6() {
            axios.get("/main39/sub5")
                .then(() => console.log("성공"))
                .catch(() => console.log("실패"))
                .finally(() => console.log("항상"))
        }
    </script>
</div>

<div>
    <h3>직원 등록</h3>
    <div>
        <input type="text" id="firstNameInput" placeholder="first name">
    </div>
    <div>
        <input type="text" id="lastNameInput" placeholder="last name">
    </div>
    <div>
        <input type="date" id="birthInput">
    </div>
    <div>
        <textarea id="notesTextArea" cols="30" rows="10" placeholder="notes"></textarea>
    </div>
    <p id="result2"></p>
    <div>
        <button onclick="ajax7addEmployee()" id="button1">등록</button>
        <script>
            function ajax7addEmployee() {
                const button1 = document.getElementById("button1");
                // 등록버튼을 여러번 누르는걸 방지하기 위함
                button1.setAttribute("disabled", "disabled");

                const lastName = document.getElementById("lastNameInput").value;
                const firstName = document.getElementById("firstNameInput").value;
                const birthDate = document.getElementById("birthInput").value;
                const notes = document.getElementById("notesTextArea").value;

                axios.post("/main39/sub6", {
                    lastName, firstName, birthDate, notes
                })
                    .then(() => {
                        // 성공했을때 (2xx 응답)
                        document.getElementById("result2").textContent = "등록 성공";
                    })
                    .catch((error) => {
                        // 실패했을때 (2xx 외 응답)
                        const code = error.response.status;
                        if (400 >= code && code < 500) {
                            document.getElementById("result2").textContent = "잘못된 입력"
                        } else if (code >= 500) {
                            document.getElementById("result2").textContent = "서버 에러"
                        }
                    })
                    .finally(() => {
                        // 항상 실행
                        // 등록버튼이 disabled 되어있으니 걸어둔 시간제한이 풀리면 다시 등록 할 수 있게 풀어줘야함
                        button1.removeAttribute("disabled");
                    })
            }
        </script>
    </div>
</div>















</body>
</html>
