package com.example.practicespring.Controller;

import com.example.practicespring.dao.MyDao7;
import com.example.practicespring.domain.MyDto40;
import com.example.practicespring.domain.MyDto41;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main36")
public class Controller36 {

    private final MyDao7 dao;

    @GetMapping("sub1")
    public void method1() {

    }

    // axios.get("/main36/sub2", {params: {id: 5}})

    // /main36/sub2?id=5
    @GetMapping("sub2")
    public void method2(Integer id) {
        Map<String, Object> data = dao.selectByCustomerId(id);
        System.out.println("data = " + data);
    }

    /*
    axios.get("/main36/sub3", {
        params: {id: 2}
    })
     */
    // /main36/sub3?id=2
    @GetMapping("sub3")
    public void method3(Integer id) {
        Map<String, Object> data = dao.selectByEmployeeId(id);
        System.out.println("data = " + data);
    }

    /*
    axios.post("/main36/sub4", {
        lastName: "손",
        firstName: "흥민",
        birthDate: "2020-02-02"
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
    })
     */
    // post /main36/sub4
    // lastName=손&firstName=흥민&birthDate=2020-02-02
    @PostMapping("sub4")
    public void method4(String lastName,
                        String firstName,
                        LocalDate brithDate) {
        int i = dao.insertEmployee(lastName, firstName, brithDate);
        System.out.println(i + "개 데이터 입력됨");
    }
    // 예제 axios 작성
    // post /main36/sub5
    // name=라면&price=150.00&category=3
    /*
    axios.post("/main36/sub5", {
         name:"pizza",
         price:150.0,
         category:2
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
    })
     */
    @PostMapping("sub5")
    public void method5(String name, Double price, Integer category) {
        int r = dao.insertProduct(name, price, category);
        System.out.println(r + "개 행이 입력됨");
    }

    /*
    axios.delete("/main36/sub6")
     */
//    @RequestMapping(method = RequestMethod.DELETE, value = "sub6")
    @DeleteMapping("sub6")
    public void method6() {
        System.out.println("Controller36.method6");
    }

    /*
    axios.delete("/main36/sub7")
     */
    @DeleteMapping("sub7")
    public void method7() {
        System.out.println("Controller36.method7");
    }

    /*
    axios.delete("/main36/sub8?name=son") 방식 1
    axios.delete("/main36/sub8", {        방식 2
        params: {
            name: "son"
        }
    })
     */
    @DeleteMapping("sub8")
    public void method8(String name) {
        System.out.println("name = " + name);
    }

    // PathVariable : 경로에 포함된 데이터
    /*
    axios.delete("/main36/sub9/son")
    axios.delete("/main36/sub9/lee")
     */
    @DeleteMapping("sub9/{name}")
    public void method9(@PathVariable("name") String n) {
        System.out.println("n = " + n);
    }

    /*
    axios.delete("/main36/sub10/3")
    axios.delete("/main36/sub10/5")
    axios.delete("/main36/sub10/7")
     */
    // delete /main36/sub10
    @DeleteMapping("sub10/{id}")
    public void method10(@PathVariable String id) {
        System.out.println("id = " + id);
    }

    /*
    axios.delete("/main36/sub11/1")
    axios.delete("/main36/sub11/3")
    axios.delete("/main36/sub11/5")
     */
    @DeleteMapping("sub11/{pid}")
    public void method11(@PathVariable Integer pid) {
        int c = dao.deleteByProductId(pid);
        System.out.println(c + "개 데이터 삭제됨");
    }

    /*
    axios.delete("/main36/sub12/1")
    axios.delete("/main36/sub12/3")
    axios.delete("/main36/sub12/5")
     */
    @DeleteMapping("sub12/{id}")
    public void method12(@PathVariable Integer id) {
        int r = dao.deleteByCustomerId(id);
        System.out.println(r + "개 데이터 삭제됨");
    }

    /*
    axios.put("/main36/sub13")
    put /main36/sub13
     */

//    @RequestMapping(method = RequestMethod.PUT, value = "sub13")
    @PutMapping("sub13")
    public void method13() {
        System.out.println("Controller36.method13");
    }

    /*
    axios.put("/main36/sub14", {
        name: "son",
        address: "korea"
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
    })
     */
    // put /main36/sub14
    // name=son&address=korea
    @PutMapping("sub14")
    public void method14(String name, String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    /*
    axios.put("/main36/sub15", {
        city: "seoul",
        age: 62,
        score: 3.14
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
    })
     */

    @PutMapping("sub15")
    public void method15(String city, Integer age, Double score) {
        System.out.println("city = " + city);
        System.out.println("age = " + age);
        System.out.println("score = " + score);
    }

    /*
    axios.put("/main36/sub16", {
        id: 15,
        name: "햄버거",
        cateogry: 2,
        price: 5000.00
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
   })
     */
    @PutMapping("sub16")
    public void method16(MyDto40 dto) {
        int rows = dao.updateProduct(dto);
        System.out.println(rows + "개 데이터 수정됨");
    }

    /*
    axios.put("/main36/sub17", {
        lastName: "lee",
        firstName: "kangin",
        birthDate: "2020-01-01",
        id: 5
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
   });
     */
    @PutMapping("sub17")
    public void method17(MyDto41 dto) {
        int c = dao.updateEmployee(dto);
        System.out.println(dto.getFirstName());
        System.out.println(dto.getLastName());
        System.out.println(dto.getBirthDate());
        System.out.println(dto.getId());
    }































}
