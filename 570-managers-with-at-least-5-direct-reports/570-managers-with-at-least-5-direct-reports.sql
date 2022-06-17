# Write your MySQL query statement below


select name from Employee where id in (select managerId from (select managerId,count(*) as cnt from Employee group by managerId having cnt>=5) as a);