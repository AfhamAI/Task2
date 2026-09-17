# Write your MySQL query statement below
select w1.id from Weather w1 join Weather w2 
on w2.recordDate + INTERVAL 1 DAY = w1.recordDate
where w1.temperature > w2.temperature 