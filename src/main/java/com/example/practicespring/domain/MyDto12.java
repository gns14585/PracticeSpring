package com.example.practicespring.domain;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class MyDto12 {
private String id;
private String name;
private String address;
private LocalDateTime schedule;
private List<String> totos;
}
