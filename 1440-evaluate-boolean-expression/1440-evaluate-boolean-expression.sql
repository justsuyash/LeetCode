# Write your MySQL query statement below

select left_operand,operator,right_operand,
case 
when operator = '>' and v.value > v1.value then 'true' 
when operator = '<' and v.value < v1.value then 'true' 
when operator = '=' and v.value = v1.value then 'true'
else 'false' end as value
from Variables as v join Expressions as e 
on v.name = e.left_operand
join 
variables as v1
on v1.name = e.right_operand;


