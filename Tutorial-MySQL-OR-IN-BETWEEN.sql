#OR
SELECT 1 = 1 OR 1/0;
SELECT true OR false AND false;
SELECT (true OR false) AND false;
USE classicmodels;
SELECT customername, country FROM customers WHERE country = 'USA' OR country = 'France';
SELECT customername, country, creditLimit FROM customers WHERE (country = 'USA' OR country = 'France') AND creditLimit>100000;
SELECT customername, country, creditLimit FROM customers WHERE country = 'USA' OR country = 'France' AND creditLimit>10000;
#IN
SELECT officeCode, city, phone, country FROM offices WHERE country IN ('USA' , 'France');
SELECT officeCode, city, phone, country FROM offices WHERE country = 'USA' OR country = 'France';
SELECT officeCode, city, phone, country FROM offices WHERE country NOT IN ('USA' , 'France');
#Using MySQL IN with a subquery
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber IN ( SELECT orderNumber FROM orderDetails GROUP BY orderNumber HAVING SUM(quantityOrdered * priceEach) > 60000); 
SELECT orderNumber FROM orderDetails Group BY orderNumber HAVING SUM(quantityOrdered * priceEach) > 60000;
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber IN (10165, 10287, 10310);
#BETWEEN
#Using MYSQL BETWEEN with number examples
SELECT productCode, productName, buyPrice FROM products WHERE buyPrice BETWEEN 90 AND 100;
SELECT productCode, productName, buyPrice FROM products WHERE buyPrice >= 90 AND buyPrice <= 100;
SELECT productCode, productName, buyPrice FROM products WHERE buyPrice NOT BETWEEN 20 AND 100;
SELECT productCode, productName, buyPrice FROM products WHERE buyPrice < 20 OR buyPrice > 100;
#Using MySQL BETWEEN with data example
SELECT orderNumber, requiredDate, status FROM orders WHERE requireddate BETWEEN CAST('2003-01-01' AS DATE) AND CAST('2003-01-31' AS DATE);
#Thanks Tutorial OR, IN, BETWEEN