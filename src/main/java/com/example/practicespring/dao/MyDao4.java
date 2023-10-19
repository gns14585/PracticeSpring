package com.example.practicespring.dao;

import com.example.practicespring.domain.MyDto33Employee;
import com.example.practicespring.domain.MyDto34Customer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface MyDao4 {

    @Delete("""
            DELETE FROM customers
            WHERE CustomerID = #{id}
            """)
    int delete1(Integer id);

    @Delete("""
            DELETE FROM products
            WHERE ProductID = #{pid}
            """)
    int delete2(Integer pid);


    @Select("""
            SELECT EmployeeID id, LastName, FirstName, BirthDate, Photo, Notes, salay
            FROM employees
            WHERE EmployeeID = #{id}
            """)
    MyDto33Employee select8(Integer id);

    @Update("""
            UPDATE employees
            SET LastName = #{lastName},
                FirstName = #{firstName},
                Photo = #{photo},
                Notes = #{notes},
                BirthDate = #{birthDate}
            WHERE EmployeeID = #{id}
            """)
    int update1(MyDto33Employee employee);

    @Select("""
            SELECT CustomerID id, CustomerName, ContactName, Address, City, PostalCode, Country
            FROM customers
            WHERE CustomerID = #{id}
            """)
    MyDto34Customer select9(Integer id);

    @Update("""
            UPDATE customers
            SET CustomerName = #{customerName},
                ContactName = #{contactName},
                Address = #{address},
                City = #{city},
                PostalCode = #{postalCode},
                Country = #{country}
            WHERE CustomerID = #{id}
            """)
    int update2(MyDto34Customer customer);
}






















