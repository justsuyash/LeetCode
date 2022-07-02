select round(((select count(distinct player_id) from activity
where (player_id,event_date) in (
select player_id, DATE_ADD(min(event_date),INTERVAL 1 day)
from activity
group by player_id
))/count(distinct player_id)),2) as fraction from activity;