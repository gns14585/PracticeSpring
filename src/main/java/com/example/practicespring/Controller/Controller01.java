package com.example.practicespring.Controller;

import com.example.practicespring.domain.MyDto01;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main1")
public class Controller01 {
    @RequestMapping("sub1")
    public String method(Model model) {
        List<MyDto01> list = new ArrayList<>();

        list.add(new MyDto01("이정훈", 29, "남", "서울 은평구", 36138304));
        list.add(new MyDto01("박채은", 25, "여", "서울 은평구", 44446176));
        list.add(new MyDto01("민하연", 26, "여", "서울 금천구", 35848752));
        list.add(new MyDto01("이동진", 29, "남", "서울 영등포", 47120048));
        list.add(new MyDto01("전은혜", 26, "여", "서울 신림", 58782391));

        model.addAttribute("Info", list);
        return "main1/sub1";
    }

    @RequestMapping("sub2")
    public void method2() {

    }

    @RequestMapping("sub3")
    public void method3() {

    }

    // 검색 사이트
    @RequestMapping("sub4")
    public void method4() {
    }

    // 검색 결과 사이트
    @RequestMapping("sub5")
    public void method5(@RequestParam("movie") String query, Model model) {
        model.addAttribute("mes", query + "를 검색하셨습니다.");

    }

    @RequestMapping("sub6")
    public void method6() {
    }

    @RequestMapping("sub7")
    public void method7() {

    }

    @RequestMapping("sub8")
    public void method8() {

    }

    @RequestMapping("sub9")
    public void method9() {

    }

    @RequestMapping("sub10")
    public void method10(@RequestParam("info") String query, Model model) {
        model.addAttribute("q",query + "를 검색 하셨습니다.");
    }

    @RequestMapping("sub11")
    public void method() {

    }

    @RequestMapping("sub12")
    public void method(String id, Integer pwe, Model model) {
        model.addAttribute("idlog" , "아이디는 " + id + " 입니다.");
        model.addAttribute("pwlog", "비밀번호는 " + pwe + "입니다.");
    }
}
