# Write your MySQL query statement below
select w.id from weather w, weather q where DATEDIFF(w.recordDate,q.recordDate)=1 and w.temperature > q.temperature;