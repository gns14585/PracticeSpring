package com.example.practicespring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main2")
public class Controller02 {

    // 버튼있는 페이지
    @RequestMapping("sub1")
    public void method1() {

    }

    // 버튼 누르고 난 뒤 페이지
    @RequestMapping("sub2")
    public void method2(String id, String pw, Model model) {
        model.addAttribute("naid", "당신의 아이디는 " + id + " 입니다.");
        model.addAttribute("napw", "당신의 비밀번호는 " + pw + " 입니다.");
    }

    @RequestMapping("sub3")
    public void method() {

    }
}
