# Write your MySQL query statement below
select w.name as warehouse_name,sum(width*length*height*units) as volume from products as p join warehouse as w on p.product_id=w.product_id group by 1;