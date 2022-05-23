# Write your MySQL query statement below
select a.employee_id from (

select e.employee_id,e.name, s.salary from Employees as e left join Salaries as s on e.employee_id = s.employee_id
union
select s.employee_id,e.name, s.salary from Employees as e right join Salaries as s on e.employee_id = s.employee_id ) as a where name is null or salary is null order by employee_id;