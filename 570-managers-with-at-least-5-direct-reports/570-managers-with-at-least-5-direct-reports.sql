Select name from employee as e join ( select managerId, count(*) as cnt from employee group by managerId having cnt >=5) as f on f.managerId = e.id