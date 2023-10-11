SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 4;
UPDATE products
SET ProductName = '이소룡',
    Unit = '10박스',
    Price = 40.00
WHERE ProductID = 4;

SELECT * FROM customers WHERE CustomerID = 5;
UPDATE customers
SET CustomerName = '이소룡'
WHERE CustomerID = 5;

SELECT * FROM employees WHERE EmployeeID = 5;
UPDATE employees
SET Notes = '하위'
WHERE EmployeeID = 5;

SELECT * FROM suppliers WHERE SupplierID = 1;
UPDATE suppliers
SET Phone = '123445',
    Address = '알게뭐야'
WHERE SupplierID = 1;

UPDATE products
SET Price = Price * 3
WHERE CategoryID = 1;
SELECT * FROM products WHERE CategoryID = 1;
SELECT * FROM shippers;

SELECT * FROM employees;