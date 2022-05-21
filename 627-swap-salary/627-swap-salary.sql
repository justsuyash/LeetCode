# Write your MySQL query statement below
Update
    Salary
set 
    sex = CASE sex
    WHEN 'm' then 'f'
    ELSE 'm'
    end;
    