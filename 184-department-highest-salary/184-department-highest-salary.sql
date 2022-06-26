SELECT
    d.name as Department,
    e.name as Employee,
    e.salary as Salary
FROM
    (
        SELECT 
            departmentID,
            MAX(salary) as Salary
        FROM
            Employee
        GROUP BY
            departmentID
    ) intq
    JOIN Department d ON intq.departmentID = d.id
    JOIN Employee e on e.departmentID = d.id AND e.Salary = intq.Salary
ORDER BY
    Department, 
    Employee