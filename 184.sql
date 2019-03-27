# Write your MySQL query statement below
SELECT d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Employee e, Department d
WHERE (e.Salary, d.Id) IN (
                                    SELECT MAX(tb.Salary) AS Salary, tb.DepartmentId
                                    FROM (
                                            SELECT e.DepartmentId, e.Name, e.Salary
                                            FROM Employee e LEFT JOIN Department d ON e.DepartmentId = d.Id
                                            ) tb
                                    GROUP BY tb.DepartmentId
                                    ) AND e.DepartmentId = d.Id;
