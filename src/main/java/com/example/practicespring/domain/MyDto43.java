package com.example.practicespring.domain;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MyDto43 {
    private String name;
    private List<String> email;
    private Map<String, Object> home;
    private Double price;
    private Double weight;
    private Boolean married;
}
