package com.example.practicespring;

import jakarta.annotation.PostConstruct;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp13 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp13.class, args);

    }
}

@Component
class MyClass26 {
    @PostConstruct // dependency injection 끝난 직후 실행
    public void method1() {
        System.out.println("MyClass26.method1");
    }
}