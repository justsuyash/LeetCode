with e as (
select e.*,
case when operator = '>' then a.value > b.value
when operator = '<' then a.value < b.value
when operator = '=' then a.value = b.value
end as value_num
from expressions e
left join variables a on a.name = e.left_operand
left join variables b on b.name = e.right_operand
)
select e.left_operand, e.operator, e.right_operand,
case when value_num is True then 'true'
else 'false' end as 'value'
from e