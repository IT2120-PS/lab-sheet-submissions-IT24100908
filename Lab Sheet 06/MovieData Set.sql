select * from movie

select * from MovieStar

select * from StarsIn

select * from Show

select * from Theater

select * from Show

select * from Booking


----(a)
CREATE VIEW MovieTheaterCount
AS
SELECT m.title, m.year, m.DirectorName, COUNT(DISTINCT s.theaterName) AS NoOfTheaters
FROM Movie m
JOIN Show s ON m.title = s.movieTitle
GROUP BY m.title, m.year, m.DirectorName;
GO


SELECT * FROM MovieTheaterCount;


----(b)
CREATE VIEW TheaterMovies
AS
SELECT t.theaterName, t.city, COUNT(DISTINCT s.movieTitle) AS NoOfMovies
FROM Theater t
JOIN Show s ON t.theaterName = s.theaterName
GROUP BY t.theaterName, t.city;
GO

SELECT * FROM TheaterMovies;


----(c)
CREATE FUNCTION MoviesByStar(@starName CHAR(25))
RETURNS INT
AS
BEGIN
    DECLARE @numMovies INT;

    SELECT @numMovies = COUNT(DISTINCT s.movieTitle)
    FROM StarsIn s
    WHERE s.starname = @starName;

    RETURN ISNULL(@numMovies, 0);
END;
GO


DECLARE @count INT;
EXEC @count = dbo.MoviesByStar 'Robert Downey';
PRINT 'Movies by Robert Downey = ' + CAST(@count AS VARCHAR);


----(d)
CREATE FUNCTION TotalSpectatorsByTheater(@theaterName VARCHAR(20))
RETURNS INT
AS
BEGIN
    DECLARE @totalSpectators INT;

    SELECT @totalSpectators = SUM(s.spectators)
    FROM Show s
    WHERE s.theaterName = @theaterName;

    RETURN ISNULL(@totalSpectators, 0);
END;
GO


DECLARE @spectators INT;
EXEC @spectators = dbo.TotalSpectatorsByTheater 'Grand Rex';
PRINT 'Total Spectators at Grand Rex = ' + CAST(@spectators AS VARCHAR);
