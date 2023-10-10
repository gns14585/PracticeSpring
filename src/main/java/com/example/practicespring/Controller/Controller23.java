package com.example.practicespring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main23")
public class Controller23 {

    @Autowired
    private DataSource dataSource;

    @RequestMapping("sub1")
    public void method1(@RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
        String sql = """
                SELECT CustomerID id, CustomerName name, Address address, City city, Country country 
                FROM customers ORDER BY CustomerID LIMIT ?, ?     
                """;

        String sql1 = """
                SELECT COUNT(*) FROM customers
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, (page - 1) * 5);
        statement.setInt(2, 5);
        ResultSet resultSet = statement.executeQuery();

        Connection connection1 = dataSource.getConnection();
        Statement statement1 = connection1.createStatement();
        ResultSet resultSet1 = statement1.executeQuery(sql1);

        List<Map<String, Object>> list = new ArrayList<>();
        int lastPageNumber = 1;

        try (connection1; connection; statement1; statement; resultSet1; resultSet) {
            while (resultSet.next()) {
                if (resultSet1.next()) {
                    int countAll = resultSet1.getInt(1);
                    lastPageNumber = (countAll - 1) / 5;

                    model.addAttribute("lastPageNumber", lastPageNumber);
                }
                Map<String, Object> map = new HashMap<>();
                map.put("id", resultSet.getString("id"));
                map.put("name", resultSet.getString("name"));
                map.put("address", resultSet.getString("address"));
                map.put("city", resultSet.getString("city"));
                map.put("country", resultSet.getString("country"));

                list.add(map);
            }
        }

        int leftPageNumber = (page - 1) / 5 * 5 + 1;
        int rightPageNumber = leftPageNumber + 4;
        int prevPageNumber = leftPageNumber - 5;
        int nextPageNumber = rightPageNumber + 1;
        int firstPageNumber = 1;

        rightPageNumber = Math.min(rightPageNumber, lastPageNumber);

        model.addAttribute("leftPageNumber", leftPageNumber);
        model.addAttribute("rightPageNumber", rightPageNumber);
        model.addAttribute("prevPageNumber", prevPageNumber);
        model.addAttribute("nextPageNumber", nextPageNumber);
        model.addAttribute("firstPageNumber", firstPageNumber);
        model.addAttribute("custList", list);
    }

    @GetMapping("sub2")
    public void method2(@RequestParam(value = "k", defaultValue = "") String keyword, Model model) throws Exception {
        String sql = """
                SELECT * FROM customers WHERE CustomerName LIKE ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + keyword + "%");
        ResultSet resultSet = statement.executeQuery();

        List<String> list = new ArrayList<>();

        try (connection; statement; resultSet) {
            System.out.println();
            System.out.println(keyword + "가 포함된 고객명들");
            while (resultSet.next()) {
                String name = resultSet.getString("customerName");
                list.add(name);
            }
        }
        model.addAttribute("keyword", keyword);
        model.addAttribute("nameList", list);
    }

    @GetMapping("sub3")
    public void method3(@RequestParam(value = "st", defaultValue = "name1") String searchType,
                        @RequestParam(value = "k", defaultValue = "") String keyword, Model model) throws Exception {
        String sql = """
                SELECT * FROM customers WHERE
                """;

        if (searchType.equals("name1")) {
            sql += "customerName LIKE ?";
        } else if (searchType.equals("name2")) {
            sql += "contactName LIKE ?";
        }

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + keyword + "%");
        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();
        try (connection; statement; resultSet) {
            while (resultSet.next()) {
                Map<String, Object> map = new HashMap<>();
                map.put("customerName", resultSet.getString("customerName"));
                map.put("contactName", resultSet.getString("contactName"));

                list.add(map);
            }
        }
        model.addAttribute("nameList", list);
        model.addAttribute("searchType", searchType);
        model.addAttribute("keyword", keyword);
    }

    @GetMapping("sub4")
    public void method4(@RequestParam(value = "st", defaultValue = "lname") String searchType,
                        @RequestParam(value = "k", defaultValue = "") String keyword, Model model) throws Exception {
        String sql = """
                SELECT * FROM employees WHERE
                """;

        switch (searchType) {
            case "lname":
                sql += "lastName LIKE ?";
                break;
            case "fname":
                sql += "firstName LIKE ?";
                break;
            case "notes":
                sql += "notes LIKE ?";
        }

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + keyword + "%");
        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();

        try(connection; statement; resultSet) {
            while (resultSet.next()) {
                Map<String, Object> map = new HashMap<>();
                map.put("lastName", resultSet.getString("lastName"));
                map.put("firstName", resultSet.getString("firstName"));
                map.put("notes", resultSet.getString("notes"));

                list.add(map);
            }
        }
        model.addAttribute("searchType", searchType);
        model.addAttribute("keyword", keyword);
        model.addAttribute("cusList", list);
    }
}
