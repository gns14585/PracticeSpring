package com.example.practicespring.Controller;

import com.example.practicespring.domain.MyDto15;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main20")
public class Controller20 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() {

    }

    @GetMapping("sub2")
    public String method2(Integer id, Model model) throws SQLException {
        String sql = """
                SELECT CustomerID, CustomerName, Address, Country 
                FROM customers 
                WHERE CustomerID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();

        List<MyDto15> list = new ArrayList<>();
        try (connection; statement; resultSet) {
            while (resultSet.next()) {
                MyDto15 dto15 = new MyDto15();
                dto15.setId(resultSet.getInt(1));
                dto15.setName(resultSet.getString(2));
                dto15.setAddress(resultSet.getString(3));
                dto15.setCountry(resultSet.getString(4));

                list.add(dto15);
            }
        }
        model.addAttribute("customerList", list);
        return "/main19/sub6";
    }

    @GetMapping("sub3")
    public void method3(String id, Model model) throws SQLException {
        String sql = """
                SELECT customerId, customerName, country FROM customers WHERE customerId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id);
        ResultSet resultSet = statement.executeQuery();

        List<String> list = new ArrayList<>();
        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                System.out.println("고객 정보");
                System.out.println("id = " + resultSet.getString(1));
                System.out.println("name = " + resultSet.getString(2));
            }
        }
    }

    // /main20/sub4?pid=5
    @GetMapping("sub4")
    public void method4(String pid, Model model) throws SQLException {
        String sql = """
                SELECT productId, ProductName FROM products WHERE ProductID = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, pid);
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                System.out.println("상품 정보");
                System.out.println("id = " + resultSet.getString(1));
                System.out.println("name = " + resultSet.getString(2));

            }
        }

    }

    // /main20/sub5?country=spain
    // 콘솔에 spain에 사는 고객 이름들 출력
    @GetMapping("sub5")
    public void method5(String contry, Model model) throws SQLException {
        String sql = """
                SELECT CustomerName FROM customers WHERE Country = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, contry);
        ResultSet resultSet = statement.executeQuery();

        System.out.println(contry + " 에 사는 이름");

        try(connection; statement; resultSet) {
            while (resultSet.next()) {
                System.out.println("이름 : " + resultSet.getString(1));
            }
        }

    }

    @GetMapping("sub6")
    public void method6(String c1, String c2, Model model) throws SQLException {
        String sql = """
                SELECT customerName, country FROM customers WHERE country = ? or country = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, c1);
        statement.setString(2, c2);
        ResultSet resultSet = statement.executeQuery();

        System.out.println("고객 목록");
        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                String country = resultSet.getString(2);
                String name = resultSet.getString(1);
                System.out.println(country + " : " + name);
            }
        }


    }

    @GetMapping("sub7")
    public void method7() {

    }

    @GetMapping("sub8")
    public String method8(Integer min, Integer max, Model model) throws SQLException {
        String sql = """
                SELECT ProductName FROM products WHERE Price >= ? AND Price <= ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, min);
        statement.setInt(2, max);
        ResultSet resultSet = statement.executeQuery();

        List<String> list = new ArrayList<>();
        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                list.add(resultSet.getString(1));
            }
        }
        model.addAttribute("proname", list);

        return "/main20/sub8";
    }

    @GetMapping("sub9")
    public void method9(@RequestParam("country") List<String> countryList, Model model) throws SQLException {
        String questionMarks = "";
        for (int i = 0; i < countryList.size(); i++) {
            questionMarks += "?";
            if (i < countryList.size() -1) {
                questionMarks += ", ";
            }
        }
        String sql = """
                SELECT *
                FROM customers
                WHERE country IN ("""
                +
                questionMarks
                +
                """
                )
                """;
//        System.out.println("sql = " + sql);

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        for (int i = 0; i < countryList.size(); i++) {
            statement.setString(i +1 , countryList.get(i));
        }
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                String name = resultSet.getString(2);
                String country = resultSet.getString(7);
                System.out.println(name + " : " + country);
            }
        }

    }

    @GetMapping("sub10")
    public void method10(Model model) throws SQLException {
        // 공갑자의 국가 목록 조회
        String sql = """
                SELECT DISTINCT country FROM suppliers
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        List<String> list = new ArrayList<>();
        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                list.add(resultSet.getString(1));
            }
        }

        model.addAttribute("countryList", list);
    }

    @GetMapping("sub11")
    public String method11(@RequestParam("country") List<String> countryList, Model model) throws SQLException {
        String rttr = "";
        for (int i = 0; i < countryList.size(); i++) {
            rttr += "?";
            if (i < countryList.size()-1) {
                rttr += ", ";
            }
        }

        String sql = """
                SELECT * FROM suppliers WHERE Country IN ("""
                +
                rttr
                +
                """
                )
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        for (int i = 0; i < countryList.size(); i++) {
            // ?의 위치는 1번부터 시작 (i+1)
            // 리스트의 첫번쨰 아이템의 위치는 0번째부터 시작 (i)
            statement.setString(i+1, countryList.get(i));
        }
        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();

        try(connection; statement; resultSet;) {
            while (resultSet.next()) {
                Map<String, Object> map = new HashMap<>();
                map.put("country", resultSet.getString(7));
                map.put("name", resultSet.getString(2));

                list.add(map);
            }
        }

        model.addAttribute("custList", list);
        return "/main20/sub11";
    }

}
