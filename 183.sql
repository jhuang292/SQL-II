# Write your MySQL query statement below
SELECT c.Name AS Customers
FROM Customers c
WHERE c.Id NOT IN (
                        SELECT c.Id
                        FROM Customers c JOIN Orders o ON c.Id = o.CustomerId
                    ) ;
