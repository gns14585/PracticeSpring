-- SELECT : 데이터 조회(읽기, 검색, 가져오기)
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.products;

SELECT * FROM customers;

SELECT * FROM categories;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM shippers;
SELECT * FROM suppliers;

SELECT CustomerName-- column 명 나열
FROM customers;-- table 명 나열

SELECT CustomerID, CustomerName FROM customers;
SELECT CustomerID, CustomerName, Country FROM customers;
SELECT CustomerName,CustomerID ,Country FROM  customers;

SELECT * FROM customers;

SELECT LastName, FirstName, BirthDate FROM employees;
SELECT ProductName, Unit, Price FROM products;
SELECT SupplierName, Address, Country FROM suppliers;

SELECT Country FROM customers;
SELECT DISTINCT Country FROM customers;
SELECT City, Country FROM customers;
SELECT DISTINCT City, Country FROM customers;

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM employees;

SELECT COUNT(DISTINCT Country) FROM suppliers;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM categories;
SELECT COUNT(DISTINCT City) FROM customers;