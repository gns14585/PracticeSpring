package com.example.practicespring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main12")
public class Controller12 {

    @RequestMapping("sub1")
    public void method1() {

    }

    @RequestMapping("asub2/bsub2/csub2/dusb2/esub2")
    public void method() {

    }

    @RequestMapping("sub3")
    public void method3() {

    }

    @RequestMapping("sub4")
    public void method4(
            @RequestParam("name") String name,
            @RequestParam("age") Integer age,
            Model model) {

        System.out.println("Controller12.method4");
        System.out.println(name + "과 " + age + " 를 저장함");

        model.addAttribute("message", name + "과 " + age + " 를 저장함");
    }


    @RequestMapping("sub5")
    public void method5() {

    }

    @RequestMapping("sub6")
    public void method6(@RequestParam("name") String name, Model model) {

        model.addAttribute("in", name + " 검색 결과 입니다.");

    }




























}
