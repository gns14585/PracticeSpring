package com.example.practicespring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main10")
public class Controller10 {
    @RequestMapping("sub7")
    public void method7(Model model) {
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);

        model.addAttribute("c", "8");
        model.addAttribute("d", "9");
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);

        model.addAttribute("c", "java");
        model.addAttribute("d", "spring");

        model.addAttribute("e", "11");
        model.addAttribute("f", "2");
        model.addAttribute("g", 2);
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        model.addAttribute("a", "java");
        model.addAttribute("b", "");

        model.addAttribute("c", List.of(3,4));
        model.addAttribute("d", List.of());

        model.addAttribute("e", Map.of("name", "son"));
        model.addAttribute("f", Map.of());

        model.addAttribute("g", null);
    }
}
