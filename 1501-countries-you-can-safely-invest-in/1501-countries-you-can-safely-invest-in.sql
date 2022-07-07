with cte as 
(
    select id,name,phone_number,substring(phone_number,1,3) as country_code from person )
    
select name as country from (
select avg(duration),dense_rank() over (order by avg(duration) desc) as rnk, co.name from cte as ct join Country as co on co.country_code=ct.country_code left join calls as c on c.caller_id=ct.id or c.callee_id=ct.id group by co.name having avg(duration) > (select avg(duration) from calls)) as a