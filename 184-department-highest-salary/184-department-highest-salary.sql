# Write your MySQL query statement below
select Department, Employee, Salary from (
select e.id,e.name as Employee,salary, dense_rank() over(partition by departmentId order by salary desc) as rnk, d.name as Department from employee as e join department as d on e.departmentId = d.id order by e.name ) as a where rnk =1 ;