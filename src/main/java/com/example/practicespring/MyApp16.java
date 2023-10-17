package com.example.practicespring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
public class MyApp16 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp16.class, args);
        MyClass31 bean1 = context.getBean("myClass31Bean", MyClass31.class);
        MyClass30 bean2 = context.getBean("myClass30Bean", MyClass30.class);

        System.out.println("bean2 = " + bean2.hashCode());
        System.out.println("bean1 = " + bean1.hashCode()); // 같은값
        System.out.println(bean2.getField().hashCode()); // 같은값
    }
}

@Configuration
class Configuration3 {
    @Bean
    public MyClass31 myClass31Bean() {
        return new MyClass31();
    }

    @Bean
    public MyClass30 myClass30Bean() {
        MyClass30 myClass30Bean = new MyClass30();
        myClass30Bean.setField(myClass31Bean());
        return myClass30Bean;
    }
}

class MyClass31 {

}

class MyClass30 {
    private MyClass31 field;

    public MyClass31 getField() {
        return field;
    }

    public void setField(MyClass31 field) {
        this.field = field;
    }
}
