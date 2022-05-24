# Write your MySQL query statement below

select customer_id, count(customer_id) as 'count_no_trans' from Visits where visit_id not in (Select visit_id from transactions) group by customer_id;

