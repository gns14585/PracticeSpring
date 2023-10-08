
-- ORDER BY : 해당 컬럼 기준
-- 컬럼명 또는 컬럼번호로 조회 가능
SELECT * FROM employees ORDER BY BirthDate;
SELECT * FROM employees ORDER BY 4;

SELECT EmployeeID, LastName, BirthDate FROM employees ORDER BY BirthDate;

SELECT * FROM products ORDER BY CategoryID;
SELECT * FROM products ORDER BY CategoryID, Price;

-- 내림차순
SELECT * FROM products ORDER BY CategoryID DESC;
SELECT * FROM products ORDER BY CategoryID DESC , Price DESC;

-- 1) 고객을 국가명 오름차순으로 조회
SELECT * FROM customers ORDER BY Country;

-- 2) 가격이 비싼 상품이 먼저 조회되도록 코드 작성
SELECT * FROM products ORDER BY Price DESC;

-- 3) 가장 어린 직원이 먼저 조회되도록 코드 작성
SELECT * FROM employees ORDER BY BirthDate DESC ;


