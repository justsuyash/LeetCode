# Write your MySQL query statement below
select dept_name, count(student_id) as student_number from student as s right join department as d on s.dept_id = d.dept_id group by d.dept_id order by student_number desc, dept_name