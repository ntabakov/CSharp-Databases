SELECT e.EmployeeID,e.FirstName,em.EmployeeID,em.FirstName AS ManagerName FROM Employees e
JOIN Employees em ON e.ManagerID = em.EmployeeID
WHERE em.EmployeeID IN(3,7) 
ORDER BY e.EmployeeID