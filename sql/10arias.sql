SELECT * FROM employees;
SELECT CONCAT(LastName, ', ', FirstName) FROM employees;

-- 컬럼명(테이블명) 변경 ( 실제 테이블명이 바뀌는건 아님 )
-- AS 생략 가능
SELECT EmployeeID id, LastName name FROM employees;
SELECT EmployeeID, CONCAT(FirstName, ', ', LastName) fullName FROM employees;
-- backtick '' 으로 키워드나 특수문자 사용 가능
SELECT EmployeeID, CONCAT(FirstName, ', ', LastName) 'full Name' FROM employees;

-- 1) 공급자의 이름(supplierName), 주소(address, city, country) 연결연산, 전화번호(phone number)
SELECT SupplierName, CONCAT(Address, ' ', City, ' ', Country),
       Phone 'phone number'
FROM suppliers;

SELECT * FROM products;
SELECT * FROM categories;

-- 카테고리별 조회 JOIN 사용
SELECT products.ProductName, categories.CategoryName
FROM products JOIN categories
    ON products.CategoryID = categories.CategoryID;

-- 별칭 사용 가능
SELECT p.ProductName, c.CategoryName
FROM products p JOIN categories c
    ON p.CategoryID = c.CategoryID;


