package com.example.practicespring.Controller;

import com.example.practicespring.dao.MyDao7;
import com.example.practicespring.domain.MyDto3;
import com.example.practicespring.domain.MyDto41;
import com.example.practicespring.domain.MyDto42;
import com.example.practicespring.domain.MyDto43;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main37")
public class Controller37 {

    private final MyDao7 dao;

    /*
    axios.post("/main37/sub1", '{"name" : "jones"', {
        headers: {
            "content-type": "application/json"
        }
    })

    axios.post("/main37/sub1", {name: "jones"})
     */

    /*
    직렬화
    js(java) object - > json text

    파싱
    json -> js(java) object
     */
    @PostMapping("sub1")
    public void method1(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.post("/main37/sub2", {name: "lee", age:33, score: 8.9})

    js object
    {name: "lee", age:33, score: 8.9}

    json text
    '{"name": "lee", "age": 33, "score": 8.9}'
     */
    @PostMapping("sub2")
    public void method2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.put("/main37/sub3", {
        city: "seoul",
        name: "son",
        email: "son@naver.com"
    })
     */
    @PutMapping("sub3")
    public void method3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.post("/main37/sub4", {
        city: "paris",
        age: 30,
        married: true,
        car: null,
        home: {
            address: "seoul",
            price: 1000
        },
        foods: [
            "pizza",
            "burger",
            "부침개"
        ]
    })
     */
    @PostMapping("sub4")
    public void method4(@RequestBody MyDto42 dto) {
        System.out.println("dto = " + dto);
    }


    /*
    axios.post("/main37/sub5", {
        country: "korea",
        score: 3.33,
        skills: [
            "attack",
            "shild"
        ],
        phone: "010-3613-8304"
    })
     */
    @PostMapping("sub5")
    public void method5(@RequestBody MyDto3 dto) {
        System.out.println("dto.getCountry() = " + dto.getCountry());
        System.out.println("dto.getScore() = " + dto.getScore());
        System.out.println("dto.getSkills() = " + dto.getSkills());
        System.out.println("dto.gePhone = " + dto.getPhone());
    }

    /*
    axios.post("/main37/sub6", {
        name: "son",
        email: ["son@naver.com", "hm@gmail.com"],
        home: {
            first: "seoul",
            second: "london"
        },
        price: 35.11,
        weight: 77.6,
        married: true
    })
     */
    @PostMapping("sub6")
    public void method6(@RequestBody MyDto43 dto) {
        System.out.println("dto.getName() = " + dto.getName());
        System.out.println("dto.getEmail() = " + dto.getEmail());
        System.out.println("dto.getHome() = " + dto.getHome());
        System.out.println("dto.getPrice() = " + dto.getPrice());
        System.out.println("dto.getWeight() = " + dto.getWeight());
        System.out.println("dto.getMarried() = " + dto.getMarried());
    }

    /*
    axios.put("/main37/sub7", {
        id: 3,
        lastName: "kim",
        firstName: "minjae",
        birthDate: "1999-09-09"
    })
     */

    @PutMapping("sub7")
    public void method7(@RequestBody MyDto41 dto) {
        int i = dao.updateEmployee(dto);
        System.out.println(dto.getId() + "번 직원 수정됨");
    }




    




































}

