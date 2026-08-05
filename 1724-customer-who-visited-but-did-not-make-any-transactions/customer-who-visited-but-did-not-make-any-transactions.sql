WITH temp AS(
select customer_id, v.visit_id , transaction_id 
from Visits v 
left join Transactions t
on v.visit_id  = t.visit_id 
where transaction_id is null
)
select customer_id , count(*) as count_no_trans
from temp
group by customer_id 
