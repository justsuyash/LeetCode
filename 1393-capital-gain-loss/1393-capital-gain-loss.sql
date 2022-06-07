# Write your MySQL query statement below
with cte as 
(
select stock_name, sum(price) as amount_buy from Stocks where operation='Buy' group by stock_name
),
cte2 as
(
select stock_name, sum(price) as amount_sell from Stocks where operation='Sell' group by stock_name
)

select cte.stock_name,(amount_sell-amount_buy) as capital_gain_loss from cte join cte2 on cte.stock_name = cte2.stock_name;