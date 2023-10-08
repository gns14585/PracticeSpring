package com.example.practicespring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

        try(connection1; connection; statement1; statement; resultSet1; resultSet) {
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
}
