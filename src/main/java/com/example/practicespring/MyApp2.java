package com.example.practicespring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp2 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp2.class, args);
        Object bean = context.getBean("myClass2");
        System.out.println(bean instanceof MyClass2); // true
        MyClass2 o1 = (MyClass2) bean;
        o1.method2();

        Object bean3 = context.getBean("myBean3");
        System.out.println(bean3 instanceof MyClass3); // true
        MyClass3 o3 = (MyClass3) bean3;

        System.out.println(System.identityHashCode(context.getBean("myClass2")));
        System.out.println(System.identityHashCode(context.getBean("myClass2")));
        System.out.println(System.identityHashCode(context.getBean("myClass2")));
        
        System.out.println(System.identityHashCode(context.getBean("myBean3")));
        System.out.println(System.identityHashCode(context.getBean("myBean3")));
        System.out.println(System.identityHashCode(context.getBean("myBean3")));
        
        // 형변환 자동 메소드
        MyClass2 bean22 = context.getBean("myClass2", MyClass2.class);
        MyClass3 bean33 = context.getBean("myBean3", MyClass3.class);

        System.out.println("bean33 = " + bean33);
        System.out.println("bean22 = " + bean22);


    }
}

// -메인 메소드가 있는 클래스의 패키지와 그 하위패키지를 스캔해서 클래스의 컴포넌트라고 붙혀져있으면 인스턴스 객체를 자동으로 만들어짐
@Component("myBean3")
class MyClass3 {

}

@Component
class MyClass2 {
    public void method2() {
        System.out.println("MyClass2.method2");
    }
}
