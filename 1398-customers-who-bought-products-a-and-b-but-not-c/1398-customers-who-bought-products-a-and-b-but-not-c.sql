select a.customer_id,c.customer_name from 

(
    
select order_id, customer_id, sum(case when product_name='A' then 1 else 0 end) as A,
sum(case when product_name='B' then 1 else 0 end) as B,
sum(case when product_name='C' then 1 else 0 end) as C from Orders group by customer_id

    ) as a join customers as c on a.customer_id = c.customer_id where A>0 and B>0 and C=0;