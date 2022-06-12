select sale_date, sum(case when fruit = 'apples' then 1 else -1 end * sold_num) as diff
from Sales
group by sale_date
order by sale_date

#Since there are just 2 data points this is a better solution, the other solution can be modified for more data points