SELECT * INTO NewTableTest
FROM Employees
WHERE Salary > 30000

DELETE FROM NewTableTest
WHERE ManagerID = 42

UPDATE NewTableTest
SET Salary+=5000
WHERE DepartmentID = 1

SELECT DepartmentID, AVG (Salary) AS AverageSalary
FROM NewTableTest
GROUP BY DepartmentID

