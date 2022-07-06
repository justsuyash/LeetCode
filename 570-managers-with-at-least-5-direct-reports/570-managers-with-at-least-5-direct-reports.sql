select name  from (
select  managerId,count(managerId) as cnt from Employee group by managerId) as a join employee as e on e.id=a.managerId where cnt>=5  ;