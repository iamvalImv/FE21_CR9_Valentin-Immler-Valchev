-- Client base Selection Name, Gender
SELECT customer_Id, first_name, last_name, gender 
FROM customer
WHERE first_name LIKE '%Indira%' OR last_name LIKE '%ie%'
-- How many customers are females?
SELECT count(customer_Id) AS 'Anzahl Frauen'
FROM customer
WHERE gender='f'
-- Select item price between 50 and 70
FROM item_catalog
WHERE price_per_unit BETWEEN 50 AND 70
-- 