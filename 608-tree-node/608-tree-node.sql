# Write your MySQL query statement below

select id, 'Root' as type from Tree where p_id is null
Union
select id, 'Leaf' as type from Tree where id not in 
    (select distinct p_id from tree where p_id is not null) and p_id is not null
union
select id, 'Inner' as type from Tree where p_id is not null and id in 
    (select distinct p_id from Tree where p_id is not null)
    order by id