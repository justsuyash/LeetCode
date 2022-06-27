# Write your MySQL query statement below
select id1 as id, student
from
(select id, student,
(case when id = (select max(id) from Seat) and id % 2 = 1 then id
when id % 2 = 0 then id - 1 else id + 1 end) as id1
from Seat) as Seat1
order by id