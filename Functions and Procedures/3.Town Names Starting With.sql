CREATE PROC usp_GetTownsStartingWith (@input NVARCHAR(55))
AS
SELECT Name FROM Towns
WHERE Name LIKE @input + '%'
