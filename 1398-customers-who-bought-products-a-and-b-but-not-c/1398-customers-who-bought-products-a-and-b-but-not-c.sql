
with cte as 

(
    select customer_id, sum(A) as A, sum(B) as B, sum(C) as C from
(
select customer_id, (case when product_name='A' then 1 else 0 end) as A,(case when product_name='B' then 1 else 0 end) as B, (case when product_name='C' then 1 else 0 end) as C from orders   
)  as a group by customer_id having A>=1 and B>=1 and C=0 )


select ct.customer_id, customer_name from CTE as ct join customers as c on ct.customer_id = c.customer_id