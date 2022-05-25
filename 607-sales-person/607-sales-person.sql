# Write your MySQL query statement below
select name from SalesPerson as s where s.sales_id not in (select sales_id from Orders as o join Company as c on o.com_id = c.com_id and c.name='Red');