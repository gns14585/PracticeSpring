SELECT CustomerName, City, Country FROM customers WHERE Country = 'SPAIN';

SELECT CustomerName, City, Country FROM customers WHERE City = 'MADRID';
SELECT CustomerName, City, Country FROM customers WHERE City = 'MADRID' AND Country = 'SPAIN';
SELECT CustomerName, City, Country FROM customers WHERE City != 'MADRID' AND Country != 'SPAIN';

SELECT CustomerName, City, Country FROM customers WHERE NOT (City = 'MADIRD' AND Country = 'SPAIN');

SELECT CustomerName, CITY, Country FROM customers WHERE City != 'MADIRD' OR Country != 'SPAIN';

SELECT CustomerName, CITY, Country FROM customers WHERE City = 'MADRID';
SELECT CustomerName, CITY, Country FROM customers WHERE Country = 'SPAIN';
SELECT CustomerName, CITY, Country FROM customers WHERE City = 'MADRID' OR Country = 'SPAIN';

SELECT * FROM products WHERE Price >= 10.00 AND Price <= 20.00;
SELECT * FROM customers WHERE CustomerName >= 'C' AND CustomerName < 'D';
SELECT * FROM employees WHERE BirthDate >= '1958-01-01' AND BirthDate < '1959-01-01';

SELECT * FROM suppliers WHERE Country = 'SPAIN' OR Country = 'SWEDEN';

SELECT * FROM employees WHERE BirthDate >= '1963-08-01' AND BirthDate < '1963-09-01';

SELECT * FROM products WHERE Price > 100 AND Price <= 200;

SELECT * FROM orders WHERE OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01';

SELECT * FROM products WHERE (Price < 10 OR Price >= 100) AND (CategoryID = 1);






