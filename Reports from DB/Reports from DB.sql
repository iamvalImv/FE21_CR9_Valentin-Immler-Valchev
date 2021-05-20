--=====================================================================-
-- Client base Selection Name, Gender
SELECT user_id, name, gender 
FROM users 
WHERE name LIKE '%Indira%' OR name LIKE '%ia%'
-- How many users are females?
SELECT count(user_id) AS 'Anzahl Frauen' FROM users WHERE gender='f'
-- Select item price between 50 and 70
SELECT * FROM product WHERE price BETWEEN 50 AND 70

--List of quantity and total sales against each product--
SELECT p.product_id as `IdProduct`,p.p_name 
as `Product name`,
sum(t.amount) as `Total Amount`,
sum(t.amount*p.price) as `Sum` 
FROM transactions t
LEFT JOIN product p on t.product_id = p.product_id group by p.p_name

--List of products that have not been sold to client yet
SELECT p.product_id as `IdProduct`, p.p_name as 
`Product` FROM product p 
LEFT JOIN transactions t on p.product_id=t.product_id WHERE t.product_id is null

--List of Users that have not yet purchased anything from the online store
SELECT u.user_id, u.name
FROM users u
LEFT JOIN orders o on u.user_id=o.user_id
WHERE o.order_id IS NULL
ORDER BY u.name
--Returns a list which shows which user has spent the highest sum--
SELECT DISTINCT u.user_id, u.name,
SUM(t.amount*p.price) AS `Sum` 
FROM users u 
LEFT JOIN orders o ON u.user_id=o.user_id 
LEFT JOIN transactions t ON t.order_id = o.order_id 
LEFT JOIN product p ON t.product_id = p.product_id 
WHERE o.order_id IS NOT NULL 
GROUP BY u.user_id
ORDER BY `Sum` DESC