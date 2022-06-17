# Write your MySQL query statement below

with cte as 
(
select left_operand,operator,right_operand,
case 
when v.value - v1.value > 0 then '>' 
when v.value - v1.value < 0 then '<'
else '=' end as value1
from Variables as v join Expressions as e 
on v.name = e.left_operand
join 
variables as v1
on v1.name = e.right_operand
)

select left_operand, operator, right_operand, 
case when operator=value1 then 'true' else 'false' end as value from cte;

