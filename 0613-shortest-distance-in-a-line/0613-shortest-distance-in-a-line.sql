# Write your MySQL query statement below


select MIN(ABS(p1.x-p2.x)) as shortest from point as p1 
inner join point as p2 on p2.x!=p1.x