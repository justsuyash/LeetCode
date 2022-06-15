# Write your MySQL query statement below


select seller_name from seller as s left join orders as o on s.seller_id = o.seller_id and extract(year from sale_date)='2020' where order_id is null order by seller_name asc;