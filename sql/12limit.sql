-- LIMIT 조회 레코드(행) 제한
SELECT * FROM customers;
SELECT * FROM customers LIMIT 3;
SELECT * FROM employees LIMIT 2;

SELECT * FROM employees ORDER BY BirthDate LIMIT 2;

SELECT * FROM products ORDER BY Price DESC LIMIT 10;

-- 1) 가장 어린 3명의 직원 조회
SELECT * FROM employees ORDER BY BirthDate DESC LIMIT 3;

-- 2) 2번 카테고리에서 가장 저렴한 상품 조회
SELECT * FROM products WHERE CategoryID = 2 ORDER BY CategoryID;

-- LIMIT n : n 개
-- LIMIT n, m : n부터 m개 (n은 0번부터)
SELECT ProductName, Price FROM products ORDER BY Price LIMIT 3;
SELECT ProductName, Price FROM products ORDER BY Price LIMIT 0, 3;

-- 페이지 나누기
SELECT CustomerID, CustomerName FROM customers ORDER BY CustomerID; -- 91개
SELECT CustomerID, CustomerName
FROM customers ORDER BY CustomerID LIMIT 0, 10; -- 1페이지 10개
SELECT CustomerID, CustomerName
FROM customers ORDER BY CustomerID LIMIT 10, 10; -- 2페이지 10개
SELECT CustomerID, CustomerName
FROM customers ORDER BY CustomerID LIMIT 20, 10; -- 3페이지 10개
SELECT CustomerID, CustomerName
FROM customers ORDER BY CustomerID LIMIT 90, 10; -- 마지막페이지

-- 1) 공급자(suppliers)를 한 페이지에 5개씩 보여줄 때 3번째 페이지 조회 코드 작성
SELECT * FROM suppliers ORDER BY SupplierID LIMIT 10, 5;

-- 한 페이지가 n개의 레코드(행)를 보여주면
-- m번째 페이지 조회
-- LIMIT (m - 1) * n, n














