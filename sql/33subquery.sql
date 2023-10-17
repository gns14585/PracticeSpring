use w3schools;

SELECT Price
FROM products
WHERE ProductName = 'IPOH COFFEE';

-- 서브쿼리
SELECT ProductName, Price
FROM products
WHERE PRICE > (SELECT Price FROM products WHERE ProductName = 'IPOH COFFEE');

SELECT BirthDate
FROM employees
WHERE LastName = 'LEVERLING';

SELECT LastName, FirstName, BirthDate
FROM employees
WHERE BirthDate < (SELECT BirthDate
                   FROM employees
                   WHERE LastName = 'LEVERLING');

-- SUBQUERY
-- 행 1개, 열 1개 : = , < , > 하나의 값을 대신하는 쿼리
SELECT BirthDate
FROM employees
WHERE LastName = 'LEVERLING';

-- 예제
-- 'TOFU' 상품을 공급하는 공급자명
-- subquery 방식
SELECT SupplierID, SupplierName
FROM suppliers
WHERE SupplierID = (SELECT SupplierID
                    FROM products
                    WHERE ProductName = 'TOFU');
-- join 방식
SELECT S.SupplierName, P.ProductName
FROM suppliers S
         JOIN products P
              ON S.SupplierID = P.SupplierID
WHERE P.ProductName = 'TOFU';

-- 행 여러개, 열 1개 :
SELECT ShipperID
FROM orders
WHERE OrderDate = '1996-07-08';

SELECT CustomerName
FROM customers
WHERE COUNTRY = 'MEXICO';

-- 예제
-- 멕시코 고객이 주문한 일자들 조회
SELECT CustomerName
FROM customers
WHERE CustomerName = 'MEXICO';

SELECT OrderDate
FROM orders
WHERE CustomerID IN (SELECT CustomerID
                     FROM customers
                     WHERE Country = 'MEXICO');


-- 예) 1번 카테고리에 있는 상품이 주문된 날짜 (orderDetails, products)
-- subquery 방식
SELECT OrderID, OrderDate
FROM orders
WHERE OrderID IN (SELECT OrderID
                  FROM orderdetails
                  WHERE ProductID IN (SELECT ProductID FROM products WHERE CategoryID = 1));
-- join 방식
SELECT DISTINCT o.OrderID, o.OrderDate
FROM orders o
         JOIN orderdetails od
             ON o.OrderID = od.OrderID
         JOIN products p
             ON od.ProductID = p.ProductID
WHERE p.CategoryID = 1;

-- 예) 주문한 적 없는 고객들
SELECT CustomerID FROM orders;

SELECT * FROM customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM orders);


-- 행 여러개, 열 여러개
SELECT * FROM customers;
INSERT INTO customers (CustomerName, Address, Country)
VALUES;

CREATE TABLE table_c
SELECT CustomerName, CITY, Country FROM customers;
SELECT * FROM table_c;
DESC table_c;

-- 예) 1번 카테고리에 있는 상품들로 새 테이블을 만드는데
-- 새로운 테이블(table_d)은 PRODUCTNAME, CATEGORYNAME, PRICE
CREATE TABLE table_d
SELECT ProductName, CategoryName, Price
FROM products P JOIN categories C
ON P.CategoryID = C.CategoryID
WHERE P.CategoryID = 1;
SELECT * FROM table_d;











