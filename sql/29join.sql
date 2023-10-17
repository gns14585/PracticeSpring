use w3schools;

SELECT *
FROM products P JOIN suppliers S
ON P.SupplierID = S.SupplierID;

SELECT *
FROM products P JOIN suppliers S
USING (SupplierID);

SELECT *
FROM products P NATURAL JOIN suppliers S;