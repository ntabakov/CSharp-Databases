CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(55), @word NVARCHAR(55)) 
RETURNS BIT
AS
BEGIN
	DECLARE @count INT = LEN(@word)
	DECLARE @index INT = 1
	DECLARE @Result BIT = 1
	WHILE(@count > 0)
	BEGIN
		DECLARE @oneLetter CHAR(1) = SUBSTRING(@word,@index,1) 

		IF(CHARINDEX(@oneLetter,@setOfLetters) > 0)			
			BEGIN
				SET @count -= 1
				SET @index += 1
			END
		ELSE
			BEGIN
				SET @Result = 0
				BREAK
			END
	END
	RETURN @Result

END

