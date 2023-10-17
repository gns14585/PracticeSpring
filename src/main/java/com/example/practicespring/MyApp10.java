package com.example.practicespring;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp10 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp10.class, args);

    }
}

interface MyInterface1 {

}
@Component
class MyClass18 implements MyInterface1 {

}
@Component
class MyClass19 implements MyInterface1 {

}
@Component
//@RequiredArgsConstructor
class MyClass17 {
    private final MyInterface1 field;

    // 주입될 bean이 여러개라면 @Qualifier로 이름을 지정해줘야함
    public MyClass17(@Qualifier("myClass18") MyInterface1 field) {
        this.field = field;
    }
}