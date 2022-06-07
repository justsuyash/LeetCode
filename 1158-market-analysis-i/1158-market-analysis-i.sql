# Write your MySQL query statement below


select u.user_id as buyer_id, u.join_date, coalesce(count(o.buyer_id),0) as orders_in_2019 from Users as u left join Orders as o on u.user_id = o.buyer_id and YEAR(o.order_date)='2019' group by u.user_id ;