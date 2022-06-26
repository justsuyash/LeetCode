SELECT
    Department,
    Employee,
    Salary
FROM (SELECT
        emp.name AS Employee,
        dep.name AS Department,
        emp.salary AS Salary,
        RANK() OVER (PARTITION BY departmentId
                     ORDER BY salary DESC) AS sal_rank
      FROM Employee AS emp
      JOIN Department as dep
        ON dep.id = emp.departmentId
     ) AS dep_sals
WHERE dep_sals.sal_rank = 1;