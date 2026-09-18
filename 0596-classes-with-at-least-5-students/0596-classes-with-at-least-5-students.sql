-- Write your PostgreSQL query statement below
with temp as (
    select class , count(student) from Courses group by class
)

select class from temp where count >= 5