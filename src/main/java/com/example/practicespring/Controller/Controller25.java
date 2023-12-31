package com.example.practicespring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "id", required = false) Integer customerId) throws SQLException {
        if (customerId == null) {
            System.out.println("삭제할 id를 넣어주세요");
            return;
        }
        String sql = """
                DELETE FROM customers WHERE customerId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, customerId);
        int row = statement.executeUpdate();

        if (row == 1) {
            System.out.println(row + "개 레코드 잘 지워짐");
        } else {
            System.out.println("잘 지워지지 않음");
        }
    }

    @GetMapping("sub2")
    public void method3() {

    }

    @PostMapping("sub2")
    public void method2(@RequestParam(value = "pid", required = false) Integer delete) throws SQLException {
        String sql = """
                DELETE FROM products WHERE ProductID = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, delete);
        statement.executeUpdate();
    }

    @GetMapping("sub4")
    public void method4() throws SQLException {
        String sql = """
                UPDATE shippers
                SET ShipperName = ?,
                    PHONE = ?
                WHERE ShipperID = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement;) {
            statement.setString(1, "이강인");
            statement.setString(2, "01036138304");
            statement.setInt(3, 1);

            statement.executeUpdate();
        }
    }

    @GetMapping("sub5")
    public void method5(@RequestParam("id") Integer shipperId, Model model) throws SQLException {
        String sql = """
                SELECT * FROM shippers WHERE shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try(connection; statement) {
            statement.setInt(1, shipperId);

            ResultSet resultSet = statement.executeQuery();

            model.addAttribute("shipper");
            try(resultSet) {
                if (resultSet.next()) {
                    model.addAttribute("shipper", Map.of
                            ("shipperName", resultSet.getInt("shipperId"),
                            "shipperName", resultSet.getString("shipperName"),
                            "phone", resultSet.getString("phone")));
                }
            }
        }

    }

    @PostMapping("sub5")
    public void method6(@RequestParam("id") Integer shipperId,
                        @RequestParam("name") String shipperName,
                        @RequestParam("phone") String phone, Model model) throws SQLException {
        String sql = """
                UPDATE shippers 
                SET shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, shipperName);
            statement.setString(2, phone);
            statement.setInt(3, shipperId);
            int i = statement.executeUpdate();

            if (i == 1) {
                System.out.println("o");
            } else {
                System.out.println("x");
            }
        }
    }

    @GetMapping("sub7")
    public void method7(@RequestParam(value = "id", required = false) Integer employeeId, Model model) throws SQLException {
        if (employeeId == null) {
            return;
        }
        String sql = """
                SELECT * FROM employees
                WHERE employeeId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setInt(1, employeeId);

            ResultSet resultSet = statement.executeQuery();

            try (resultSet) {
                if (resultSet.next()) {
                    String lastName = resultSet.getString("lastName");
                    String firstName = resultSet.getString("firstName");
                    String birthDate = resultSet.getString("birthDate");
                    String photo = resultSet.getString("photo");
                    String notes = resultSet.getString("notes");

                    model.addAttribute("employee", Map.of("lastName", lastName,
                            "firstName", firstName,
                            "birthDate", birthDate,
                            "photo", photo,
                            "notes", notes,
                            "employeeId", employeeId));
                }
            }
        }
    }

    @PostMapping("sub7")
    public String method8(String lastName,
                          String firstName,
                          String birthDate,
                          String photo,
                          String notes,
                          @RequestParam("id") Integer employeesId,
                          RedirectAttributes rtt, Model model) throws Exception {

        String sql = """
                UPDATE employees
                SET LastName = ?,
                    FirstName = ?,
                    BirthDate = ?,
                    Photo = ?,
                    Notes = ?
                    WHERE EmployeeID = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try(connection; statement) {
            statement.setString(1, lastName);
            statement.setString(2, firstName);
            statement.setString(3, birthDate);
            statement.setString(4, photo);
            statement.setString(5, notes);
            statement.setInt(6, employeesId);

            statement.executeUpdate();
        }
        rtt.addAttribute("id", employeesId);
        return "redirect:/main25/sub7";
    }

    @GetMapping("sub9")
    public String method9(RedirectAttributes rttr) {


        rttr.addAttribute("abc", "def");
        rttr.addFlashAttribute("email", "abc@gmail.com");
        return "redirect:/main25/sub10";
    }

    @GetMapping("sub10")
    public void method10(Model model) {
        model.addAttribute("email");
        System.out.println("Controller25.method10");
    }

























}
