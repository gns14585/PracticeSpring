INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (10, '손', '흥민', '2000-01-01', '사진10', 'epl 득점왕');


INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (11, '이', '강인', '2000-02-02', '사진11', '드리블 잘함');

INSERT INTO employees
VALUE (12, '김', '민재', '2000-03-03', '사진12', '수비 잘함');

-- 특정 컬럼에만 값을 넣을땐 컬럼명 나열 생략 불가
INSERT INTO employees (EmployeeID, LastName, FirstName)
VALUE (13, '박', '지성');

INSERT INTO employees (EmployeeID, LastName, FirstName)
VALUE (14, '차', '범근');

INSERT INTO employees (EmployeeID, LastName, FirstName)
    VALUE (15, '김', '두식');

SELECT * FROM employees ORDER BY EmployeeID DESC;

INSERT INTO products(Price) VALUE (20.10);
SELECT * FROM products ORDER BY PRICE DESC;

-- 값의 타입에 따라 넣는 방법이 다름
INSERT INTO employees (EmployeeID) VALUE (16);

SELECT * FROM products ORDER BY ProductID DESC;
INSERT INTO products VALUE (79, 'phone', 1,1,'box',20.40);
INSERT INTO products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUE ('IPHONE', 2,2,'BOX2',20.50);

SELECT * FROM suppliers;