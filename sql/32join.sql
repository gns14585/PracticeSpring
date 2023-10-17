use w3schools;


-- 1) Leverling 보다 나이 많은 직원 조회
SELECT E1.LastName, E1.FirstName
FROM employees E1 JOIN employees E2
WHERE E1.BirthDate < E2.BirthDate
AND E2.LastName = 'Leverling';


-- 1) 'Ipoh Coffee' 보다 비싼 상품명 조회
SELECT p2.ProductName, p2.Price
FROM products P1 JOIN products P2
ON P1.Price < P2.Price
WHERE P1.ProductName = 'Ipoh Coffee';


