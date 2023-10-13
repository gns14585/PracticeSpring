USE w3schools;


-- 상관쿼리

SELECT *
FROM suppliers;

SELECT COUNT(*)
FROM customers
WHERE Country = (SELECT Country FROM suppliers WHERE SupplierID = 1);
SELECT COUNT(*)
FROM customers
WHERE Country = (SELECT Country FROM suppliers WHERE SupplierID = 2);
-- 각 공급자가 있는 나라의 고객 수는?
SELECT s.SupplierID,
       (SELECT COUNT(*)
        FROM customers
        WHERE customers.Country = S.Country) 'Number Of Customers'
FROM suppliers S;

-- 1) 각 직원보다 나이가 많은 직원의 수
SELECT E2.LastName,
       (SELECT COUNT(*)
        FROM employees E1
        WHERE E1.BirthDate < E2.BirthDate) 'Number Of Emp'
FROM employees E2;

-- 3:10분