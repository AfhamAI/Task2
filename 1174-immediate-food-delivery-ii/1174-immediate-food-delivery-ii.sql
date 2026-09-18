WITH first_orders AS (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
)
 
select round(count(case when order_date = customer_pref_delivery_date then 1 end)*100.0/count(*),2) as immediate_percentage 
from Delivery d 
join first_orders f
on d.customer_id = f.customer_id 
and d.order_date = f.first_order_date