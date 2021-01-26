SELECT TOP(50) FirstName,LastName,t.Name as Town,a.AddressText FROM Employees e
JOIN Addresses a ON e.AddressID = a.AddressID
JOIN Towns t ON t.TownID=a.TownID
ORDER BY FirstName,LastName