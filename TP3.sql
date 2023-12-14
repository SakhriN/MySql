CREATE DATABASE IF NOT EXISTS TP3;

USE tp3;


SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

-- 1 :
SELECT firstName, lastName, jobTitle FROM employees ORDER BY lastName;
-- 2 :
SELECT DISTINCT LastName FROM employees;
-- 3 :
SELECT customerName, contactFirstName, contactLastName FROM customers WHERE country="USA";
-- 4 :
SELECT email FROM employees WHERE firstName LIKE "%y" AND reportsTo LIKE "105%";
-- 5 :
SELECT lastName, email FROM employees WHERE firstName LIKE "L%";
-- 6 :
SELECT * FROM customers ORDER BY contactLastName;
-- 7 :
SELECT * FROM employees ORDER BY officeCode;
-- 8 :
SELECT customerName, SUM(amount) FROM customers, payments WHERE customers.customerNumber = payments.customerNumber GROUP BY customerName HAVING SUM(amount) >100000;

-- 9 : SELECT orderNumber FROM orders WHERE status = "Shipped";
-- 10 :
SELECT orderNumber, products.productCode, productName, MSRP, priceEach FROM products, orderdetails WHERE products.productCode = orderdetails.productCode AND products.productCode = "S10_1678" HAVING MSRP > priceEach ;
-- 11 :
SELECT email FROM employees, offices WHERE firstName LIKE "%y" OR (employees.officeCode = offices.officeCode AND city = "San Francisco"); 

SELECT COUNT(*) FROM employees, customers WHERE employeeNumber = 1165 AND employees.employeeNumber = customers.salesRepEmployeeNumber;

SELECT  lastName, firstName FROM employees WHERE jobTitle = "President";

SELECT SUM(priceEach*quantityOrdered) AS "Somme des montants des paiements reçus" FROM orders,orderdetails WHERE orderDate LIKE "2005-03%" AND orders.orderNumber = orderdetails.orderNumber;

SELECT customers.customerNumber, contactLastName, SUM(amount) as "Montant des paiements" FROM customers, payments WHERE customers.customerNumber = payments.customerNumber GROUP BY customers.customerNumber;

SELECT orderDate, customerNumber, status FROM orders WHERE status="Cancelled";

SELECT firstName, lastName FROM employees WHERE reportsTo = 1143;

SELECT firstName, lastName FROM employees WHERE reportsTo IS NULL;

SELECT orderNumber, MIN(quantityOrdered) FROM orderdetails GROUP BY orderNumber ORDER BY MIN(quantityOrdered) LIMIT 1;