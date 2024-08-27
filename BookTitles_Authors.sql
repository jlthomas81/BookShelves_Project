SELECT BT.BookTitle
	,A.FirstName + ' ' + COALESCE(A.MiddleName + ' ', '') + A.LastName AS [Author Name]
FROM BookTitles AS BT
JOIN [dbo].[BookAuthor] AS BA
	ON BT.BookID = BA.BookID
JOIN Authors AS A
	ON BA.AuthorID = A.AuthorID
ORDER BY [Author Name];