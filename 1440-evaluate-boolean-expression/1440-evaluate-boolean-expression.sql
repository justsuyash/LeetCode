with cte as 
(
select v.name,v1.value as val1,e.operator,e.left_operand,v.value as val2,e.right_operand from expressions as e join variables as v on e.right_operand = v.name join variables v1 on e.left_operand=v1.name
)
select left_operand, operator, right_operand, 
(case 
when val1=val2 and operator = '=' then 'true'
when val1>val2 and operator = '>' then 'true'
when val1<val2 and operator = '<' then 'true' else 'false'
end) as value
from cte;