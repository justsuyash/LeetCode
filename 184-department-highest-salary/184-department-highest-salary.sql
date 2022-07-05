select department, employee, salary from 
(
select e.id as eid, e.name as employee, e.salary as salary, dense_rank() over(partition by departmentId order by salary desc) as rnk, e.departmentId, d.id,d.name as department from Employee as e join department as d on e.departmentId = d.id
) as a where rnk =1;