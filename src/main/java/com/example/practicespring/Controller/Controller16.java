package com.example.practicespring.Controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main16")
public class Controller16 {

    @Autowired
    private ServletContext application;

    @GetMapping("sub1")
    public void method1(Model model, HttpSession session) {
        model.addAttribute("modelAttr1", "추석");
        session.setAttribute("sessionAttr1", "강강술래");
        application.setAttribute("appAttr1", "보름달");

        model.addAttribute("attr1", "송편");
        session.setAttribute("attr1", "윷놀이");
        application.setAttribute("attr1", "토끼");
    }

    @RequestMapping("sub2")
    public void method2(HttpSession session) {
        Object count = session.getAttribute("count");
        if (count == null) {
            session.setAttribute("count", 0);
        } else {
            Integer countInt = (Integer) count;
            countInt++;
            session.setAttribute("count", countInt);
        }

        Object appCount = application.getAttribute("count");
        if (appCount == null) {
            application.setAttribute("count", 0);
        } else {
            Integer countInt = (Integer) appCount;
            countInt++;
            application.setAttribute("count", countInt);
        }
    }

    @RequestMapping("sub3")
    public void method3(Model model, HttpSession session) {
        model.addAttribute("modelAttr1", "보름달");
        session.setAttribute("sessionAttr1", "송편");

    }

    @RequestMapping("sub4")
    public void method4(Model model, HttpSession session) {
        Object modelAttr1 = model.getAttribute("modelAttr1");
        Object sessionAttr1 = session.getAttribute("sessionAttr1");

        System.out.println("modelAttr1 = " + modelAttr1);
        System.out.println("sessionAttr1 = " + sessionAttr1);
    }

    @GetMapping("sub5")
    public String method5() {

        return "/main16/sub5"; // view name
    }










}
