--BOOKTITLES

INSERT INTO dbo.BookTitles
(
	BookTitle,
	ISBN,
	GenreID,
	LocationofBookID,
	Pages,
	CopyrightDate,
	PublisherID,
	BindingID
)

VALUES

(N'The Caboose Who Got Loose', N'978-0-395-28715-6', N'7', N'10', N'48', N'1971', N'12', N'2')

SELECT * FROM dbo.BookTitles

GO

--WHOHASREAD

INSERT INTO dbo.WhoHasRead
(
	BookID,
	PersonID
)

VALUES

(N'16', N'5')

SELECT * FROM dbo.WhoHasRead

GO

--BOOKAUTHOR

INSERT INTO dbo.BookAuthor

(
	BookID,
	AuthorID

)

VALUES

(N'16', N'27')

SELECT * FROM BookAuthor

GO