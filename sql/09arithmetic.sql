SELECT Price FROM products WHERE ProductID = 1;
SELECT Price + 1 FROM products WHERE ProductID = 1;
SELECT Price - 10.5 FROM products WHERE ProductID = 1;
SELECT Price * 3 FROM products WHERE ProductID = 1;
SELECT Price / 5 FROM products WHERE ProductID = 1;

SELECT ProductName, Price * 2 FROM products;

SELECT CONCAT(ProductName, 1), Price FROM products;

-- 1968-12-08
SELECT LastName, BirthDate FROM employees WHERE EmployeeID = 1;
SELECT ADDDATE(BirthDate, INTERVAL 1 DAY ) FROM employees WHERE EmployeeID = 1;

SELECT * FROM employees;
SELECT EmployeeID, CONCAT(LastName, ', ', FirstName),
       ADDDATE(BirthDate, INTERVAL -1 YEAR ) FROM employees

-- 1) 주문수량(Quantity) * 2 결과 조회 (orderdetails 테이블)
SELECT Quantity * 2 FROM orderdetails;

-- 2) "city, country" 고객테이블 조회
SELECT CONCAT(City, ', ', Country) FROM customers;
