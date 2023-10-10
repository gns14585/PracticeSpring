SELECT * FROM customers WHERE CustomerName = 'Around the Horn';
SELECT * FROM customers WHERE CustomerName LIKE '%the%';
SELECT * FROM customers WHERE CustomerName LIKE 'CH%'; -- CH 로 시작하는
SELECT * FROM customers WHERE CustomerName LIKE '%CH'; -- CH 로 끝나는
SELECT * FROM customers WHERE CustomerName LIKE '%ER%';

SELECT * FROM employees WHERE FirstName LIKE '_____'; -- _ : 1개의 문자 아무거나
SELECT * FROM employees WHERE LastName LIKE '____';

SELECT * FROM employees WHERE LastName LIKE '_E%';

SELECT * FROM products WHERE ProductName LIKE 'CH%';
SELECT * FROM products WHERE ProductName LIKE '%ES';
SELECT * FROM products WHERE ProductName LIKE '%USE%';
SELECT * FROM products WHERE ProductName LIKE '_U%';

SELECT * FROM customers WHERE CustomerName LIKE '%RED%';
SELECT * FROM customers WHERE ContactName LIKE '%RED%';

SELECT * FROM employees