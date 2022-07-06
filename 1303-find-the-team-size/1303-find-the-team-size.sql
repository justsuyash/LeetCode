# Write your MySQL query statement below

select employee_id, count(1) over(partition by team_id) as team_size from Employee;