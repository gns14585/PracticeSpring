package com.example.practicespring.dao;

import com.example.practicespring.domain.MyDto37;
import com.example.practicespring.domain.MyDto38;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface MyDao6 {
    @Insert("""
            INSERT INTO customers (CustomerName)
            VALUES (#{name})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert1(MyDto37 dto);


    @Insert("""
            INSERT INTO employees(LastName)
            VALUES (#{lastName})
            """)
    // 키를 dto에 다시 할당하는게 밑 코드
    // userGeneratedKeys = true, keyProperty = "id"(이 부분은 dto에서 id선언하려는 필드명)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void insert2(MyDto38 dto);


    @Insert("""
            INSERT INTO employees(LastName, FirstName)
            VALUES (#{lastName}, #{firstName})
            """)
    @Options(useGeneratedKeys = true , keyProperty = "id")
    void insert3(MyDto38 dto);
}
