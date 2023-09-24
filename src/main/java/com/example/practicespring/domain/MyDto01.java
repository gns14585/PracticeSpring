package com.example.practicespring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyDto01 {
    private String name;
    private Integer age;
    private String gender;
    private String address;
    private Integer phoneNumber;
}
