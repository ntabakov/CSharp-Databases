CREATE FUNCTION ufn_CalculateFutureValue (@Sum DECIMAL(15,2), @Yearrate FLOAT,@numberOfYears int)
RETURNS DECIMAL(15,4)
AS
BEGIN
	DECLARE @Result DECIMAL(15,4)
	SET @Result = (@Sum *(POWER((1+@Yearrate),@numberOfYears)))
	RETURN @Result
END
