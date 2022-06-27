# Write your MySQL query statement below
select co.country_name,

(case when avg(weather_state)<=15 then 'Cold' 
     when avg(weather_state)>=25 then 'Hot' 
     else 'Warm' end) as weather_type
     from weather as w join countries as co on w.country_id=co.country_id where w.day between '2019-11-01' and '2019-11-30' group by w.country_id;