SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE or ALTER PROCEDURE usp_BookLocations


AS 
/******************************************************************************
* Description: To find the Location of each book
*			   	
*			
* Procedure Test: 
	

	EXEC dbo.usp_BookLocations
	
* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/21/2024	Jennifer Thomas		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

	--Do Stuff

SELECT LB.Floor
	, LB.BookshelfColor
	, LB.Shelf
	, BT.BookTitle
FROM LocationofBook AS LB
JOIN BookTitles AS BT
	ON BT.LocationofBookID = LB.LocationofBookID
ORDER BY BT.BookTitle



END;