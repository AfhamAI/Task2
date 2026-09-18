-- Write your PostgreSQL query statement below
with temp as (
    select product_id , min(year) as first_year from Sales group by product_id
)

select s.product_id , t.first_year , quantity , price 
from Sales s
join temp t
on s.product_id = t.product_id and s.year = t.first_year 

