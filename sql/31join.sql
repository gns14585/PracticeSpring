use w3schools;

-- 주문한 적 없는 고객들 조회
-- 서브쿼리
SELECT DISTINCT CustomerID FROM orders ORDER BY 1;

SELECT CustomerName
FROM customers
WHERE CustomerID
          NOT IN (SELECT DISTINCT CustomerID FROM orders ORDER BY 1);
-- JOIN
SELECT CustomerName
FROM customers C LEFT JOIN orders O
ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL;

-- 주문 처리한 적 없는 직원 조회
SELECT LastName
FROM employees E LEFT JOIN orders O
ON E.EmployeeID = O.EmployeeID
WHERE O.EmployeeID IS NULL;

INSERT INTO employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('손', '흥민', '2000-01-01', '사진1', '축구선수');