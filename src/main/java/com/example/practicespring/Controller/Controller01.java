package com.example.practicespring.Controller;

import com.example.practicespring.domain.MyDto01;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
