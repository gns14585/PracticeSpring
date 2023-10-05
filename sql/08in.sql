SELECT * FROM customers WHERE Country = 'UK' OR Country = 'SPAIN' OR Country = 'ITALY';
SELECT * FROM customers WHERE Country IN ('UK', 'SPAIN', 'ITALY');

SELECT * FROM products WHERE CategoryID IN (3, 4);
SELECT * FROM orders WHERE OrderDate IN ('1996-07-04', '1996-07-05');
SELECT * FROM customers WHERE CITY IN ('LONDON', 'MADRID', 'SEVILLA');