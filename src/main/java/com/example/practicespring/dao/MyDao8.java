package com.example.practicespring.dao;

import com.example.practicespring.domain.MyDto33Employee;
import com.example.practicespring.domain.MyDto45;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface MyDao8 {

    @Select("""
            SELECT *
            FROM products
            WHERE ProductID = #{id}
            """)
    Map<String, Object> selectProductById(Integer id);


    @Select("""
            SELECT EmployeeID id,
                    FirstName,
                    LastName,
                    Photo,
                    Notes
            FROM employees
            WHERE 
                EmployeeID = #{id}
            """)
    MyDto33Employee selectByEmployeeId(Integer id);


    @Select("""
            SELECT p.ProductID id, 
                   p.Price, 
                   c.CategoryName category, 
                   p.Unit
            FROM products P JOIN categories C
            ON P.CategoryID = C.CategoryID
            WHERE P.ProductID = #{id}
            """)
    MyDto45 selectByProductId(Integer id);
}
