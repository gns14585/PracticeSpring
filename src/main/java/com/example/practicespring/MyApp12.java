package com.example.practicespring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp12 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp12.class, args);
        Object bean = context.getBean("myClass25");
        Object bean1 = context.getBean("myClass24");
        Object bean2 = context.getBean("myClass23");

        MyClass25 o1 = (MyClass25) bean;
        System.out.println(bean1.hashCode());// int 값 출력
        System.out.println(bean2.hashCode());// int 값 출력(1)
        System.out.println(o1.getField().hashCode()); // int 값 출력(1)

    }
}

interface MyInterface3 {}
@Component
class MyClass23 implements  MyInterface3 {

}
@Component
class MyClass24 implements MyInterface3 {

}
@Component
class MyClass25 {
    private MyInterface3 field;
    // 생성자 주입방식
    public MyClass25(@Qualifier("myClass23") MyInterface3 field) {
        this.field = field;
    }
    // 메소드 주입방식 (메소드는 @Autowired 애너테이션 작성 해줘야함)
//    @Autowired
//    public void setField(@Qualifier("myClass23") MyInterface3 field) {
//        this.field = field;
//    }

    public MyInterface3 getField() {
        return field;
    }
}
