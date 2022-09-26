CREATE PROC spSchool_GetRevenue
	@schoolId INT
AS 
BEGIN 

DECLARE @avgTution DECIMAL = (
	SELECT AverageTuition FROM School WHERE Id=@schoolId
);

DECLARE @count INT = (
	SELECT COUNT(*) FROM Student WHERE SchoolId = @schoolId
);

SELECT @avgTution * @count;
END