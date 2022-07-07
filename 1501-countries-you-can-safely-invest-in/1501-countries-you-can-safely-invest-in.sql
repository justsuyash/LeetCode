# Write your MySQL query statement below

with cte as
(
select id, name, left(phone_number,3) as country_code from Person
)
select country from (
select co.name as country, avg(c.duration) as avgdur from cte as p join country as co on p.country_code = co.country_code join calls as c on c.caller_id = p.id or c.callee_id = p.id group by country
    ) as a where avgdur > (select avg(duration) from calls);