CREATE PROC usp_EmployeesBySalaryLevel (@level NVARCHAR(55))
AS
	SELECT FirstName,LastName FROM Employees	
	WHERE dbo.ufn_GetSalaryLevel(Salary) = @level
