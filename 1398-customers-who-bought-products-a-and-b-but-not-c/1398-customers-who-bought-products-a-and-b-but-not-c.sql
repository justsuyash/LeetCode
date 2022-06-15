select customer_id, customer_name
from Customers
where customer_id in
(select t2.customer_id
from(select customer_id,
sum(case when product_name = 'A' then 1 else 0 end) as 'A',
sum(case when product_name = 'B' then 1 else 0 end) as 'B',
sum(case when product_name = 'C' then 1 else 0 end) as 'C'
from Orders
group by customer_id) t2
where A != 0 and B != 0 and C = 0)

