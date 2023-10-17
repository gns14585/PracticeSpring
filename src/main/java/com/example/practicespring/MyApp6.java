package com.example.practicespring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp6 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp6.class, args);
        MyClass9 bean = context.getBean("myClass9", MyClass9.class);
        MyClass10 bean1 = context.getBean("myClass10", MyClass10.class);
        bean.method9();

        System.out.println("bean.getField() = " + bean.getField());
        Object bean2 = context.getBean("myClass10");
        System.out.println("bean2 = " + bean2);

    }
}
@Component
class MyClass10 {
    public void method10() {
        System.out.println("MyClass10.method10");
    }
}
@Component
class MyClass9 {
    private MyClass10 field;
    public MyClass9() {
    }
    public MyClass9(MyClass10 field) {
        this.field = field;
    }

    public MyClass10 getField() {
        return field;
    }

    @Autowired // dependency injection (의존성 주입)
    public void setField(MyClass10 field) {
        this.field = field;
    }



    public void method9() {
        field.method10();
    }
}
