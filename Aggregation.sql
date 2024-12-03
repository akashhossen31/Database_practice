SELECT * FROM albums

SELECT COUNT(*) FROM customers

SELECT SUM(UnitPrice) FROM invoicelines

SELECT AVG(UnitPrice) FROM invoicelines



SELECT MIN(UnitPrice) FROM invoicelines

SELECT MAX(UnitPrice) FROM invoicelines


SELECT * FROM employees GROUP BY `City`


SELECT * FROM employees GROUP BY `id` HAVING `City`="Calgary"

SELECT * FROM employees GROUP BY `City`