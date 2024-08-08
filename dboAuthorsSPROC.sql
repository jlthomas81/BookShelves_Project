Use BookShelves

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE dbo.usp_Authors

AS

/*************************************************************************
*****
* Description: List of Authors in the Database
*
*
* Procedure Test:
	EXEC dbo.usp_Authors

* Change History:
* -----------------------------------------------------------------------
------
* Date			|Author				|Reason
* -----------------------------------------------------------------------
------
* 07/21/2024	Jennifer Thomas		Update to remove AUthorID
**************************************************************************
*****/

BEGIN
SET NOCOUNT ON;

--DO STUFF

SELECT a.FirstName + ' ' + COALESCE(a.MiddleName + ' ', '') + a.LastName AS [Full Name]
FROM Authors AS A
ORDER BY [Full Name]


END;

GO