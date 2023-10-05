SELECT CustomerName FROM customers WHERE Country = 'Germany';
SELECT CustomerName, Country FROM customers WHERE NOT Country = 'GERMANY';

SELECT * FROM products WHERE CategoryID != 1;
SELECT * FROM suppliers WHERE Country != 'JAPAN';