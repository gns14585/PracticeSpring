SELECT CustomerName, Address, City, Country FROM customers;
SELECT * FROM customers WHERE CustomerID = 1;
SELECT * FROM customers WHERE CustomerID = 2;
SELECT * FROM customers WHERE Country = 'USA';
SELECT * FROM customers WHERE Country = 'Mexico';
SELECT * FROM customers WHERE Country = 'France';
SELECT * FROM customers WHERE CustomerID = 3;

SELECT * FROM customers WHERE Country = 'UK';
SELECT * FROM products WHERE CategoryID = 1;
SELECT * FROM suppliers WHERE City = 'Osaka';

SELECT CustomerName FROM customers WHERE Country = 'USA';
SELECT CustomerName, CustomerID FROM customers WHERE Country = 'UK';

SELECT ProductName, Price FROM products WHERE CategoryID = 2;
SELECT SupplierName, SupplierID FROM suppliers WHERE Country = 'Japan';
SELECT CategoryName FROM categories WHERE CategoryID = 2;