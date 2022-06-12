# Write your MySQL query statement below

select sale_date, sum(apples) - sum(oranges) as diff from (

select sale_date, case when fruit='apples' then sold_num else 0 end as apples, (case when fruit='oranges' then sold_num else 0 end) as oranges from Sales
) as a
group by sale_date;