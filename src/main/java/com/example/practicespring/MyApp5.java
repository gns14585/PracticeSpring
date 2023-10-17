package com.example.practicespring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

//@SpringBootApplication
public class MyApp5 {
    public static void main(String[] args) {
//        ApplicationContext context = SpringApplication.run(MyApp5.class, args);
        // 직접 제어
        MyClass8 obj1 = new MyClass8();
        MyClass7 obj2 = new MyClass7();
        obj2.setField(obj1);
        obj1.method8();
    }
}
class MyClass8 {
    public void method8() {
        System.out.println("MyClass8.method8");
    }
}
class MyClass7 {
    private MyClass8 field;
    public void method7() {
        field.method8();
    }

    public MyClass7() {
    }

    public MyClass7(MyClass8 field) {
        this.field = field;
    }

    public void setField(MyClass8 field) {
        this.field = field;
    }
}
