USE OnlineMovieDatabase
GO

CREATE VIEW [The films released aftert 2000] AS
SELECT FilmTitle , FilmDuration , ProjectionDate
FROM Films
WHERE ProjectionDate > 2000

GO

CREATE VIEW [Longer than 150 mins films] AS
SELECT FilmTitle , FilmDuration , ProjetionDate
FROM Films
WHERE FilmDuration >= 150 

GO

CREATE VIEW [longer than Avarage duration films ] AS
SELECT FilmTitle , FilmDuration , ProjectionDate
FROM Films
WHERE FilmDuration > (SELECT AVG (FilmDuration) FROM Films)

GO

CREATE VIEW [Users] AS
SELECT 
FROM
WHERE

GO

CREATE VIEW [] AS
SELECT 
FROM
WHERE