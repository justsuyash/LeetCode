SELECT Department, Employee, Salary FROM (
SELECT d.name AS Department, e.name as Employee, e.salary, DENSE_RANK() OVER (PARTITION BY d.id ORDER BY salary DESC) AS rnk
FROM Employee e INNER jOIN Department d ON e.departmentId = d.id) q
WHERE rnk = 1;