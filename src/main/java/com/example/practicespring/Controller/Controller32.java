package com.example.practicespring.Controller;

import com.example.practicespring.dao.MyDao6;
import com.example.practicespring.domain.MyDto37;
import com.example.practicespring.domain.MyDto38;
import com.example.practicespring.service.MyService1;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {
    private final MyDao6 dao;
    private final MyService1 component;

    @GetMapping("sub1")
    public void method1(MyDto37 dto) {
        dao.insert1(dto);

        System.out.println("dto = " + dto);
    }


    // /main32/sub2?lastName=흥민
    @GetMapping("sub2")
    public void method2(MyDto38 dto) {
        dao.insert2(dto); // 직원 테이블에 lastName 입력

        System.out.println("dto = " + dto); // 새 직원의 번호(키)와 lastName 출력
    }

    // 직원정보등록
    @GetMapping("sub3")
    public void method3() {

    }

    @PostMapping("sub4")
    public String method4(MyDto38 dto, RedirectAttributes rttr) {
        dao.insert3(dto);

        // getid는 몇번째 등록되었는지 확인용도
        rttr.addFlashAttribute("message", dto.getId() + "번 직원 등록완료");
        return "redirect:/main32/sub3";
    }

    @GetMapping("sub5")
    public void method5() {
        try {
            component.tx1();
        } finally {
            System.out.println("dao.select3() = " + dao.select3());
        }
    }
    // 예외 발생시 하나의 업무만 처리 안되게끔 예외발생하면 아예 처리 전으로 돌아가기
    // 그럴경우 @Transactional 어노테이션 작성
    // 단 트랙젝션 작성 시 해당 구문은 다른 외부클래스에서 받아와야함

}
