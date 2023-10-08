package com.example.practicespring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main21")
public class Controller21 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                SELECT customerName name, country FROM customers WHERE CustomerID <= 3
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try(connection; statement; resultSet;) {
            System.out.println("고객 목록");
            while (resultSet.next()) {
                // getString(테이블명) 테이블명을 적는게 안정적임 sql이 추가될 수 있기때문에
//                String name = resultSet.getString(1);
//                String country = resultSet.getString(2);

                String name = resultSet.getString("name");
                String country = resultSet.getString("country");
                System.out.println(name + " : " + country);
            }
        }
    }

    @GetMapping("sub2")
    public void method2() throws SQLException {
        String sql = """
                SELECT CONCAT(lastName, ', ', firstName) fullName, birthDate birth,
                Notes 'DESC' FROM employees
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                String name = resultSet.getString("fullName");
                String date = resultSet.getString("birth");
                String note = resultSet.getString("DESC");

                System.out.println(name + " : " + date + " : " + note);
            }
        }
    }
}
