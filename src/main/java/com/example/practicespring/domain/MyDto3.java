package com.example.practicespring.domain;

import lombok.Data;

import java.util.List;

@Data
public class MyDto3 {
    private String country;
    private Double score;
    private List<String> skills;
    private String phone;
}
