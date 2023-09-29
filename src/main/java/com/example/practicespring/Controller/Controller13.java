package com.example.practicespring.Controller;

import com.example.practicespring.domain.MyDto11;
import com.example.practicespring.domain.MyDto12;
import com.example.practicespring.domain.MyDto13;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping({"sub1", "sub2", "sub4", "sub7", "sub9",
            "sub11", "sub13"})
    public void method1() {

    }
    @RequestMapping("sub3")
    public void method3(String param1, String param8) {
        System.out.println("param1 = " + param1);
        System.out.println("param8 = " + param8);
    }

    @RequestMapping("sub5")
    public void method5(@RequestParam("userId") String userId,
                        @RequestParam("userEmail") String userEmail,
                        @RequestParam("birthDate")LocalDate birthDate,
                        @RequestParam("hobby") List<String> hobby){


        System.out.println("userId = " + userId);
        System.out.println("userEmail = " + userEmail);
        System.out.println("birthDate = " + birthDate);
        System.out.println("hobby = " + hobby);
    }

    @RequestMapping("sub6")
    public void method6(MyDto11 user) {
        System.out.println("user = " + user);

    }

    @RequestMapping("sub8")
    public void method8(MyDto12 info) {
        System.out.println("info = " + info);
    }

    @RequestMapping("sub10")
    public void method10(@RequestParam("title") String title,
                         @RequestParam("contentBody") String contentBody) {
        System.out.println("title = " + title);
        System.out.println("contentBody = " + contentBody);
    }

    @RequestMapping("sub12")
    public void mehotd12(MyDto13 vo) {
        System.out.println("vo = " + vo);
    }

    @RequestMapping("sub14")
    public void method14(@RequestParam("food") List<String> food,
                         @RequestParam("hobby") String hobby) {
        System.out.println("food = " + food);
        System.out.println("hobby = " + hobby);
    }


}
