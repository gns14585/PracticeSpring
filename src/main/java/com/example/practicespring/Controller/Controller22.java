package com.example.practicespring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.*;

@Controller
@RequestMapping("main22")
public class Controller22 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer page) throws SQLException {
        String sql = """
                SELECT CustomerID id, CustomerName name FROM customers
                ORDER BY id LIMIT ?, ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, (page-1)*10);
        statement.setInt(2, 10);
        ResultSet resultSet = statement.executeQuery();

        try(connection; statement; resultSet) {
            System.out.println("고객 목록");
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");

                System.out.println(id + " : " + name);
            }
        }
    }

    // 페이지당 7개씩 공급자 목록 조회
    // /main22/sub2?page=3
    @GetMapping("sub2")
    public void method(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) throws SQLException {
        String sql = """
                SELECT SupplierID id, SupplierName name, Address address, City city, Country country
                FROM suppliers ORDER BY SupplierID LIMIT ?, ?
                """;

        String sql1 = """
                SELECT COUNT(*) FROM suppliers
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, (page - 1) * 7);
        statement.setInt(2, 7);
        ResultSet resultSet = statement.executeQuery();

        Connection connection1 = dataSource.getConnection();
        Statement statement1 = connection1.createStatement();
        ResultSet resultSet1 = statement1.executeQuery(sql1);


        int lastPageNumber = 1;
        List<Map<String, Object>> list = new ArrayList<>();
        try(connection; statement; resultSet; connection1; statement1; resultSet1) {
            while (resultSet.next()) {
                if (resultSet1.next()) {
                    int countAll = resultSet1.getInt(1);
                    lastPageNumber = (countAll - 1) / 7 + 1;

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
        model.addAttribute("supplierList", list);
    }

    // /main22/sub3?page=2
    // 2페이지 고객 목록 jsp에 테이블형식 (id, name) 출력
    // page 번호로 링크 만들어서 이동되도록
    // 1페이지에 15개씩

    @GetMapping("sub3")
    public void method3(@RequestParam(defaultValue = "1") Integer page, Model model)
        throws Exception {
        String sql = """
                SELECT CustomerID id, CustomerName name FROM customers ORDER BY CustomerID LIMIT ?, ?
                """;

        String sql1 = """
                SELECT COUNT(*) FROM customers
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, (page - 1) * 15);
        statement.setInt(2, 15);
        ResultSet resultSet = statement.executeQuery();

        Connection connection1 = dataSource.getConnection();
        Statement statement1 = connection1.createStatement();
        ResultSet resultSet1 = statement1.executeQuery(sql1);

        List<Map<String, Object>> list = new ArrayList<>();
        int lastPageNumber = 1;
        try(connection; connection1; statement1; statement; resultSet; resultSet1) {
            while (resultSet.next()) {
                if (resultSet1.next()) {
                    int countAll = resultSet1.getInt(1);
                    lastPageNumber = (countAll - 1) / 15 + 1;

                    model.addAttribute("lastPageNumber", lastPageNumber);
                }
                Map<String, Object> map = new HashMap<>();
                map.put("id", resultSet.getString("id"));
                map.put("name", resultSet.getString("name"));

                list.add(map);
            }
        }

        int leftPageNumber = (page - 1) / 3 * 3 + 1;
        int prevPageNumber = leftPageNumber - 3;

        int rightPageNumber = leftPageNumber + 2;
        int nextPageNumber = rightPageNumber + 1;

        rightPageNumber = Math.min(rightPageNumber, lastPageNumber);

        model.addAttribute("currentPage", page);
        model.addAttribute("prevPageNumber", prevPageNumber);
        model.addAttribute("nextPageNumber", nextPageNumber);
        model.addAttribute("leftPageNumber", leftPageNumber);
        model.addAttribute("rightPageNumber", rightPageNumber);
        model.addAttribute("cusList", list);

    }


    @GetMapping("sub4")
    public void method4(@RequestParam(defaultValue = "1") Integer page, Model model) throws Exception {
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

        try(connection; connection1; statement1; statement; resultSet; resultSet1) {
            while (resultSet.next()) {
                if (resultSet1.next()) {
                    int countAll = resultSet1.getInt(1);
                    lastPageNumber = (countAll - 1) / 7;

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

            int firstPageNumber = 1;
            int leftPageNumber = (page - 1) / 5 * 5 + 1;
            int rightPageNumber = leftPageNumber + 4;

            int prevPageNumber = leftPageNumber - 5;
            int nextPageNumber = rightPageNumber + 1;

            rightPageNumber = Math.min(rightPageNumber, lastPageNumber);

            model.addAttribute("firstPageNumber", firstPageNumber);
            model.addAttribute("leftPageNumber", leftPageNumber);
            model.addAttribute("rightPageNumber", rightPageNumber);
            model.addAttribute("prevPageNumber", prevPageNumber);
            model.addAttribute("nextPageNumber", nextPageNumber);
            model.addAttribute("currentPage", page);
            model.addAttribute("custList", list);
        }
    }























}
