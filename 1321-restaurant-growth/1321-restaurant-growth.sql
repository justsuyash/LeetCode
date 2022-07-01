with cte as 
(
select visited_on, sum(amount) as amount, 
       row_number() over (order by visited_on) as row_num
  from Customer
group by 1
) 

,cte2 as 

(
select visited_on, sum(amount) over(order by visited_on Rows between 6 preceding and current row )as ma_sum, avg(amount) over(order by visited_on Rows between 6 preceding and current row )as ma_avg, row_num from cte


)

select visited_on, ma_sum as amount, round(ma_avg,2) as average_amount from cte2 where row_num >=7