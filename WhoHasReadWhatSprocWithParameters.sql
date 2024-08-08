SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE or ALTER PROCEDURE usp_WhoHasReadWhatWithParam
(@FullName NVARCHAR(50)) --parameters with datatypes

AS 
/******************************************************************************
* Description: Pick a Person and see what they have read
*			   	
*			
* Procedure Test: 
	
	EXEC dbo.usp_WhoHasReadWhatWithParam @FullName = '6'
	
* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/16/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff

SELECT P.FirstName + ' ' + P.MiddleName + ' ' + P.LastName AS FullName
	, BT.BookTitle
FROM dbo.Person AS P
LEFT JOIN dbo.WhoHasRead AS WHO
	ON P.PersonID = WHO.PersonID
LEFT JOIN dbo.BookTitles AS BT
	ON WHO.BookID = BT.BookID
WHERE WHO.PersonID = @FullName;


END;

