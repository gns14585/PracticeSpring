use w3schools;
SELECT *
FROM products;
SELECT *
FROM categories;

-- JOIN : 두개의 테이블 결합
-- chais 상품의 카테고리 명은?
SELECT CategoryName
FROM products P
         JOIN categories C
              ON P.CategoryID = C.CategoryID
WHERE ProductName = 'chais';

SELECT COUNT(*)
FROM products
         JOIN categories;

CREATE TABLE table_c
(
    product_id   INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    category_id  INT
);
CREATE TABLE table_d
(
    category_id   INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(20)
);
INSERT INTO table_d (category_name)
VALUES ('음료수'),
       ('반찬');
INSERT INTO table_c (product_name, category_id)
VALUES ('콜라', 1),
       ('사이다', 1),
       ('제육', 2),
       ('돈까스', 2),
       ('두부', 2);

-- 두 테이블 결합하면 조회된 레코드 수는
-- A테이블 ROW * B테이블 ROW

-- 컬럼명이 하나의 테이블에만 있을 때 테이블명 생략 가능
-- 같은 컬럼명이 여러테이블에 있다면 테이블명 작성
SELECT *
FROM table_c
         JOIN table_d
WHERE table_c.product_name = '콜라'
  AND table_d.category_id = table_c.category_id;

SELECT *
FROM table_c
         JOIN table_d
WHERE table_c.category_id = table_d.category_id
  AND product_name = '콜라';

SELECT ProductID, ProductName, CategoryName
FROM products P
         JOIN categories C
              ON P.CategoryID = C.CategoryID
WHERE ProductName = 'Chais';

SELECT ProductID, ProductName, CategoryName
FROM products P
         JOIN categories C
              ON P.CategoryID = C.CategoryID
WHERE ProductName = 'Chais';


-- 1) chais 상품의 공급자명, 전화번호
SELECT ProductName, Phone
FROM products P
         JOIN suppliers S
              ON P.SupplierID = S.SupplierID
WHERE ProductName = 'CHAIS';

-- 2) 1996년 7월 4일에 주문한 고객명
SELECT CustomerName
FROM orders O
         JOIN customers C
              ON O.CustomerID = C.CustomerID
WHERE OrderDate = '1996-07-04';

-- 3) 1996년 7월 4일에 주문을 담당한 직원명
SELECT CONCAT(LastName, ' ', FirstName) fullName
FROM orders O
         JOIN employees E
              ON O.EmployeeID = E.EmployeeID
WHERE OrderDate = '1996-07-04';

SELECT *
FROM products;

-- 3개 테이블 조회
SELECT P.ProductName, S.SupplierName, S.Phone, C.CategoryName
FROM products P
         JOIN suppliers S
              ON P.SupplierID = S.SupplierID
         JOIN categories C
              ON P.CategoryID = C.CategoryID
WHERE P.ProductName = 'chais';

-- 1) 'Chang'상품의 공급자명, 카테고리명 조회
SELECT s.SupplierName, c.CategoryName
FROM products P
         JOIN suppliers S
              ON P.SupplierID = S.SupplierID
         JOIN categories C
              ON P.CategoryID = C.CategoryID
WHERE ProductName = 'Chang';

-- 2) 1996년 7월 9일에 주문한 고객명과, 처리한 직원명
SELECT C.CustomerName, CONCAT(E.LastName, ' ', FirstName) fullName
FROM orders o
         JOIN customers c
              ON O.CustomerID = C.CustomerID
         JOIN employees e
              ON O.EmployeeID = E.EmployeeID
WHERE OrderDate = '1996-07-09';

-- 3) 1996년 7월 9일에 주문한 상품명 (orders, orderDetails, products)
SELECT P.ProductName, O.OrderDate
FROM orderdetails od
         JOIN products p
              ON OD.ProductID = p.ProductID
         JOIN orders o
              ON OD.OrderID = O.OrderID
WHERE OrderDate = '1996-07-09';


-- 'Chang' 상품이 주문된 상품명,날짜,고객명,직원명
SELECT p.ProductName,
       o.OrderDate ,
       C.CustomerName,
       CONCAT(E.LastName, ' ', E.FirstName) fullName
FROM products P
         JOIN orderdetails OD
              ON P.ProductID = OD.ProductID
         JOIN orders o
              ON OD.OrderID = O.OrderID
         JOIN customers c
              ON O.CustomerID = C.CustomerID
         JOIN employees e
              ON O.EmployeeID = E.EmployeeID
WHERE ProductName = 'Chang';










