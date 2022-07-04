with cte as (select left_operand,operator,right_operand,
case when t2.value -t3.value >0 then '>'
when t2.value -t3.value <0 then '<'
else '=' end as value
from expressions t1
left join variables t2 on t2.name = t1.left_operand
left join variables t3 on t3.name = t1.right_operand)

select left_operand,operator,right_operand, if(value = operator,'true','false') as value from cte
