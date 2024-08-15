SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE or ALTER PROCEDURE usp_BookLocationsWithParam
@BookTitle NVARCHAR(50)


AS 
/******************************************************************************
* Description: Find a Book
*			   	
*			
* Procedure Test: 
	
	EXEC dbo.usp_BookLocationsWithParam 'If You Give A Mouse A Cookie'
	
* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/31/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff

SELECT DISTINCT LB.Floor
	, LB.BookshelfColor
	, LB.Shelf
	, BT.BookTitle
FROM LocationofBook AS LB
JOIN BookTitles AS BT
	ON BT.LocationofBookID = LB.LocationofBookID
WHERE BT.BookTitle = @BookTitle;


END;

