-- Write your PostgreSQL query statement below
with new as (
    select id, visit_date, people,
    row_number() over (),
    id - row_number() over () as prev
    from Stadium
    where people >= 100
)

select id, visit_date, people from new where prev in(
    select prev from new
    group by prev
    having count(*) >= 3
);