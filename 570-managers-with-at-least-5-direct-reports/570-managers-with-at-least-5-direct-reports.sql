Select name from employee as e join ( select managerId from employee group by managerId having count(managerId) >=5) as f on f.managerId = e.id


