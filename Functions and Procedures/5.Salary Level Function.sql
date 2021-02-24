CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(55)
AS
BEGIN
	DECLARE @result NVARCHAR(55)
	IF(@salary < 30000)
		SET @result = 'Low'
	ELSE IF (@salary BETWEEN 30000 AND 50000)
		SET @result = 'Average'
	ELSE
		SET @result='High'
	RETURN @result

END