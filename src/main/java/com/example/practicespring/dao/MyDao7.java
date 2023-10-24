package com.example.practicespring.dao;

import com.example.practicespring.domain.MyDto40;
import com.example.practicespring.domain.MyDto41;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.Map;

@Mapper
public interface MyDao7 {

    @Select("""
            SELECT *
            FROM customers
            WHERE CustomerID = #{id}
            """)
    Map<String, Object> selectByCustomerId(Integer id);

    @Select("""
            SELECT *
            FROM employees
            WHERE EmployeeID = #{id}
            """)
    Map<String, Object> selectByEmployeeId(Integer id);


    @Insert("""
            INSERT INTO employees(lastName, FirstName, BirthDate)
            VALUES (#{lastName}, #{firstName}, #{birthDate})
            """)
    int insertEmployee(String lastName, String firstName, LocalDate birthDate);


    @Insert("""
            INSERT INTO products (ProductName, Price, CategoryID)
            VALUES (#{name}, #{price}, #{category})
            """)
    int insertProduct(String name, Double price, Integer category);


    @Delete("""
            DELETE FROM products
            WHERE ProductID = #{pid}
            """)
    int deleteByProductId(Integer pid);


    @Delete("""
            DELETE FROM customers
            WHERE CustomerID = #{id}
            """)
    int deleteByCustomerId(Integer id);


    @Update("""
            UPDATE products
            SET Price = #{price},
                CategoryID = #{category},
                ProductName = #{name}
            WHERE
                ProductID = #{id}
            """)
    int updateProduct(MyDto40 dto);


    @Update("""
            UPDATE employees
            SET LastName = #{lastName},
                FirstName = #{firstName},
                BirthDate = #{birthDate}
            WHERE
                EmployeeID = #{id}
            """)
    int updateEmployee(MyDto41 dto);
}
