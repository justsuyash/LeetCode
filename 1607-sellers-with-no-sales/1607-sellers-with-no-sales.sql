# Write your MySQL query statement below


select seller_name from seller where seller_name not in

(
select seller_name from seller as s left join Orders as o on s.seller_id = o.seller_id where Year(sale_date) ='2020' group by s.seller_id 
    ) order by seller_name asc;