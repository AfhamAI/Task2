-- Write your PostgreSQL query statement below
with temp as(
    select player_id , min(event_date) as firstLogin from Activity group by player_id
)
select round(count(*)::numeric/(SELECT COUNT(*) FROM temp),2) as fraction from Activity a 
join temp t
on a.event_date = firstLogin + INTERVAL '1 DAY' and a.player_id = t.player_id