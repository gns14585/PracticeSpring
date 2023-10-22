package com.example.practicespring.Controller;

import com.example.practicespring.dao.MyDao4;
import com.example.practicespring.domain.MyDto33Employee;
import com.example.practicespring.domain.MyDto34Customer;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Queue;

@Controller
@RequiredArgsConstructor
@RequestMapping("main30")
public class Controller30 {

    private final MyDao4 dao;
    // /main30/sub11?id=
    @GetMapping("sub11")
    public void method11(Integer id) {
        // 반환타입이 int 인 경우는 쿼리문이 Insert, Update, Delete
        int rows = dao.delete1(id);
        System.out.println(rows + "개 행이 지워짐");
    }

    // /main30/sub12?pid=3
    // 3번 상품의 삭제되는 메소드 작성
    @GetMapping("sub12")
    public void method12(Integer pid) {
        int rows = dao.delete2(pid);
        System.out.println(rows + "개 상품이 삭제됨");
    }

    // /main30/sub13?id=2
    @GetMapping("sub13")
    public void method13(Integer id, Model model) {
        // 직원 조회
        MyDto33Employee employee = dao.select8(id);

        model.addAttribute("employee", employee);
    }

    @PostMapping("sub14")
    public String method14(MyDto33Employee employee, RedirectAttributes rttr) {
        // 직원 수정
        int rows = dao.update1(employee);

        if (rows == 1) {
            rttr.addFlashAttribute("message", "정보 변경 완료");
        } else {
            rttr.addFlashAttribute("message" , "변경되지 않았습니다.");
        }
        rttr.addAttribute("id", employee.getId());
        return "redirect:/main30/sub13";
    }

    // /main30/sub15?id=3
    // 3번 고객 조회 -> view로 포워딩
    @GetMapping("sub15")
    public void method15(Integer id, Model model) {
        MyDto34Customer customer = dao.select9(id);
        model.addAttribute("customer", customer);
    }

    @PostMapping("sub16")
    public String method16(MyDto34Customer customer, RedirectAttributes rttr) {
        int rows = dao.update2(customer);

        if (rows == 1) {
            rttr.addFlashAttribute("message", "수정완료");
        }
        rttr.addAttribute("id", customer.getId());
        return "redirect:/main30/sub15";
    }
}
