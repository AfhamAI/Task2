-- Write your PostgreSQL query statement below
SELECT c.customer_id
FROM Customer c
JOIN Product p
ON c.product_key = p.product_key
group by c.customer_id
having count(DISTINCT c.product_key) = (select count(*) from Product)