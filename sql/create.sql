CREATE DATABASE OnlineMovieDatabase
GO
USE OnlineMovieDatabase
GO

CREATE TABLE Country (

	CountryID  INT NOT NULL ,
	CountryName Varchar (45),
	
	PRIMARY KEY (CountryID),
	
)

CREATE TABLE Usertb (

	UserID  INT NOT NULL ,
	UserName Varchar (45),
	UserSurname Varchar(45),
	UserEmail Varchar(45),
	UserPassword Varchar (15),
	RegistrationDate Varchar(30),
	CountryID INT NOT NULL ,
	
	
	PRIMARY KEY (USerID),
	FOREIGN KEY (CountryID) REFERENCES Country
	
	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Languagetb (

	LanguageID  INT NOT NULL ,
	LanguageName Varchar (45),
	
	PRIMARY KEY (LanguageID),
	

)

CREATE TABLE Award (

	AwardID  INT NOT NULL ,
	AwardName Varchar (45),
	
	PRIMARY KEY (AwardID),

)


CREATE TABLE ProductionCompany (

	CompanyID  INT NOT NULL ,
	CompanyName Varchar (45),
	CompanyFoundingDate Varchar (45),
	CountryID INT NOT NULL,
	
	PRIMARY KEY (CompanyID),
	FOREIGN KEY (CountryID) REFERENCES Country

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

---------------------------------------------------
--films table
-------------------------------------------------

CREATE TABLE Films (

	FilmID  INT NOT NULL ,
	FilmTitle Varchar (50),
	FilmDuration Varchar(45),
	ProjectionDate Varchar(50),
	FilmSummary Varchar(500),
	AwardID INT 
	
	PRIMARY KEY (FilmID),
	FOREIGN KEY (AwardID) REFERENCES Award

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE People (

	PeopleID  INT NOT NULL ,
	PeopleName Varchar (45),
	PeopleLifeTime Varchar (45),
	CountryID INT
	
	PRIMARY KEY (PeopleID),
	FOREIGN KEY (CountryID) REFERENCES Country

	ON DELETE CASCADE
	ON UPDATE CASCADE

)

CREATE TABLE Actor (

	ActorName Varchar(45),
	PeopleID INT NOT NULL ,
	
	FOREIGN KEY (PeopleID) REFERENCES People

	ON DELETE CASCADE
	ON UPDATE CASCADE
)
CREATE TABLE Director (

	DirectorName Varchar(45),
	PeopleID INT NOT NULL ,
	
	FOREIGN KEY (PeopleID) REFERENCES People

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Scenarist (

	ScenaristName Varchar(45),
	PeopleID INT NOT NULL ,
	
	FOREIGN KEY (PeopleID) REFERENCES People

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Genre (

	GenreID  INT NOT NULL ,
	GenreName Varchar (45),
	
	PRIMARY KEY (GenreID),

)

CREATE TABLE Films_has_Actors (

	FilmID  INT NOT NULL ,
	PeopleID INT NOT NULL,
	
	FOREIGN KEY (FilmID) REFERENCES Films,
	FOREIGN KEY (PeopleID) REFERENCES People

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Films_has_Scenarist(

	FilmID  INT NOT NULL ,
	PeopleID INT NOT NULL,
	
	FOREIGN KEY (FilmID) REFERENCES Films,
	FOREIGN KEY (PeopleID) REFERENCES People

	ON DELETE CASCADE
	ON UPDATE CASCADE

)

CREATE TABLE Genre_has_Films (

	FilmID  INT NOT NULL ,
	GenreID INT NOT NULL,
	
	FOREIGN KEY (FilmID) REFERENCES Films,
	FOREIGN KEY (GenreID) REFERENCES Genre,


)

CREATE TABLE Actor_has_Award (

	PeopleID INT NOT NULL ,
	AwardID INT NOT NULL,
	AwardDate Varchar(45) ,
	
	FOREIGN KEY (PeopleID) REFERENCES People ,
	FOREIGN KEY (AwardID) REFERENCES Award

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Director_has_Award (

	PeopleID INT NOT NULL ,
	AwardID INT NOT NULL,
	AwardDate Varchar(45) ,
	
	FOREIGN KEY (PeopleID) REFERENCES People ,
	FOREIGN KEY (AwardID) REFERENCES Award

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE Scenarist_has_Award (

	PeopleID INT NOT NULL ,
	AwardID INT NOT NULL,
	AwardDate Varchar(45) ,
	
	FOREIGN KEY (PeopleID) REFERENCES People ,
	FOREIGN KEY (AwardID) REFERENCES Award

	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE People_has_Language (

	PeopleID INT NOT NULL,
	LanguageID INT NOT NULL ,
	
	FOREIGN KEY (PeopleID) REFERENCES People,
	FOREIGN KEY (LanguageID) REFERENCES Languagetb

	ON DELETE CASCADE
	ON UPDATE CASCADE

)

CREATE TABLE UserRating(

	FilmID INT NOT NULL,
	RatingPoint REAL ,
	UserID INT NOT NULL,

	FOREIGN KEY (FilmID) REFERENCES Films,
	FOREIGN KEY (UserID) REFERENCES Usertb

	)

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sCountryID
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 

GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sUserID 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sLanguageID
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sAwardID 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sCompanyID
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sFilmID
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sPeopleID 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

USE OnlineMovieDatabase
GO

CREATE SEQUENCE sGenreID
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO

/*Procedures*/

USE OnlineMovieDatabase
GO

create procedure Films_insert
(
	@FilmTitle nchar(50),
	@ProjectionDate nchar(50),
	@FilmDuration nchar(45),
	@FilmSummary nchar(500)
)

AS
	BEGIN
		insert into Films(FilmID, FilmTitle,FilmDuration,ProjectionDate,FilmSummary) values(NEXT VALUE FOR sFilmID , @FilmTitle ,@FilmDuration, @ProjectionDate , @FilmSummary)
	END

GO


create procedure Films_delete
(
	@FilmTitle nchar(50)
)
AS
	BEGIN
		delete from films where FilmTitle = @FilmTitle
	END
GO

create procedure Films_update
(
	@FilmID	int,
	@FilmTitle nchar(50),
	@ProjectionDate date,
	@FilmDuration int,
	@FilmSummary nchar(500)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE films
		SET
			FilmTitle = @FilmTitle, 
			ProjectionDate = @ProjectionDate,
			FilmDuration = @FilmDuration,
			FilmSummary = @FilmSummary
			
			WHERE FilmID = @FilmID
	END
GO


USE OnlineMovieDatabase
GO

create procedure Award_insert
(
	@AwardName nchar(50)
)

AS
	BEGIN
		insert into Award(AwardID, AwardName) values(NEXT VALUE FOR sAwardID , @AwardName)
	END

GO


create procedure Award_delete
(
	@AwardID int
)
AS
	BEGIN
		delete from Award where AwardID = @AwardID
	END
GO

create procedure Award_update
(
	@AwardID	int,
	@AwardName nchar(50)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Award
		SET
			AwardName = @AwardName 

			WHERE AwardID = @AwardID
	END
GO

USE OnlineMovieDatabase

GO
create procedure People_insert
(
	@PeopleName nchar(20),
	@PeopleLifeTime Varchar(45),
	@CountryID int
)
AS
	BEGIN
		insert into People(PeopleID, PeopleName, PeopleLifeTime, CountryID) values(NEXT VALUE FOR sPeopleID, @PeopleName, @PeopleLifeTime, @CountryID)
	END
GO

create procedure People_delete
(
	@PeopleID	int
)
AS
	BEGIN
		delete from People where PeopleID = @PeopleID
	END
GO

create procedure People_update
(
	@PeopleID	int,
	@PeopleName nchar(20),
	@PeopleLifeTime Varchar(45),
	@CountryID int
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE People
		SET
			PeopleName = @PeopleName,
			PeopleLifeTime = @PeopleLifeTime,
			CountryID = @CountryID,
			PeopleID = @PeopleID

			WHERE PeopleID = @PeopleID
	END
GO


USE OnlineMovieDatabase
GO

create procedure Country_insert
(
	@CountryName nchar(20)
)
AS
	BEGIN
		insert into Country(CountryID, CountryName) values(NEXT VALUE FOR sCountryID, @CountryName)
	END
GO

create procedure Country_delete
(
	@CountryID int
)
AS
	BEGIN
		delete from Country where CountryID = @CountryID
	END
GO

create procedure Country_update
(
	@CountryID	int,
	@CountryName nchar(20)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Country
		SET
			CountryName = @CountryName
			WHERE CountryID = @CountryID
	END
GO

USE OnlineMovieDatabase
GO

create procedure Usertb_insert
(
	@UserName nchar(45),
	@UserSurname nchar(45),
	@UserEmail nchar(45),
	@UserPassword  nchar(15),
	@RegistrationDate nchar(30),
	@CountryID int
)
AS
	BEGIN
		insert into Usertb(UserID, UserName, UserSurname, UserEmail, UserPassword, RegistrationDate,CountryID) values(NEXT VALUE FOR sUserID, @UserName, @UserSurname,@UserEmail, @UserPassword, @RegistrationDate, @CountryID)
	END
GO

create procedure Usertb_delete
(
	@UserID int,
	@CountryID int
)
AS
	BEGIN
		delete from Usertb where UserID = @UserID
	END
GO

create procedure Usertb_update
(
	@UserName nchar(40),
	@UserSurname nchar(20),
	@UserPassword  nchar(16),
	@UserEmail nchar(25),
	@CountryID int,
	@UserID int,
	@RegistrationDate nchar(30)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Usertb
		SET
			UserName	= @UserName,
			UserSurname	= @UserSurname,
			UserPassword= @UserPassword,
			UserEmail	= @UserEmail,
			CountryID	= @CountryID,
			RegistrationDate = @RegistrationDate

			WHERE UserID = @UserID
	END
GO

USE OnlineMovieDatabase
GO
create procedure ProductionCompany_insert
(
	@CompanyName nchar(45),
	@CompanyFoundingDate nchar(45),
	@CountryID int
)
AS
	BEGIN
		insert into ProductionCompany(CompanyID, CompanyName, CompanyFoundingDate, CountryID ) values(NEXT VALUE FOR sCompanyID, @CompanyName,@CompanyFoundingDate,@CountryID)
	END
GO

create procedure ProductionCompany_delete
(
	@CompanyID int
)
AS
	BEGIN
		delete from ProductionCompany where CompanyID = @CompanyID
	END
GO

create procedure ProductionCompany_update
(
	@CompanyID int,
	@CountryID int,
	@CompanyName nchar(25),
	@CompanyFoundingDate nchar(45)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE ProductionCompany
		SET
			CompanyName = @CompanyName,
			CompanyFoundingDate = CompanyFoundingDate

			WHERE CompanyID = @CompanyID
	END
GO

USE OnlineMovieDatabase
GO
create procedure Actor_insert
(
	@ActorName nchar(45)
)
AS
	BEGIN
		insert into Actor(PeopleID, ActorName) values(NEXT VALUE FOR sPeopleID, @ActorName)
		/*insert into People(PeopleID, PeopleName) values(NEXT VALUE FOR sPeopleID, @PeopleName)*/
	END
GO

create procedure Actor_delete
(
	@PeopleID int
)
AS
	BEGIN
		delete from Actor where PeopleID = @PeopleID
	END
GO

create procedure Actor_update
(
	@PeopleID	int,
	@ActorName nchar(45)
)
AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Actor
		SET
			ActorName = @ActorName
			WHERE PeopleID = @PeopleID
	END
GO


USE OnlineMovieDatabase

GO

CREATE PROCEDURE Languagetb_insert
(

	@LanguageName nchar(30)

)
AS

	BEGIN
	
		INSERT INTO Languagetb(LanguageID , LanguageName) VALUES (NEXT VALUE FOR sLanguageID , @LanguageName)
	END
	
GO


	CREATE PROCEDURE Languagetb_delete
(

	@LanguageID INT

)
AS

	BEGIN
	
		DELETE FROM Languagetb  WHERE LanguageID = @LanguageID
	END
	
GO

	CREATE PROCEDURE Languagetb_update
(

	@LanguageID INT,
	@LanguageName nchar(30)

)
AS

	BEGIN
	
		SET  NOCOUNT ON
	
		UPDATE Languagetb
		SET
		
		LanguageName = @LanguageName
		WHERE LanguageID = @LanguageID
	END
	
	GO
	
	
	
USE OnlineMovieDatabase

GO

CREATE PROCEDURE Scenarist_insert
(

	@ScenaristName nchar(45)

)
AS

	BEGIN
	
		INSERT INTO Scenarist(PeopleID , ScenaristName) VALUES (NEXT VALUE FOR sPeopleID , @ScenaristName)
	END
	
GO

	CREATE PROCEDURE Scenarist_delete
(

	@PeopleID INT

)
AS

	BEGIN
	
		DELETE FROM Scenarist WHERE PeopleID = @PeopleID
	END
	
GO

	CREATE PROCEDURE Scenarist_update
(

	@PeopleID INT,
	@ScenaristName nchar(30)

)
AS

	BEGIN
	
		SET  NOCOUNT ON
	
		UPDATE Scenarist
		SET
		
		ScenaristName = @ScenaristName
		WHERE PeopleID = @PeopleID
	END
	
	GO

	
USE OnlineMovieDatabase

GO

CREATE PROCEDURE Director_insert
(

	@DirectorName nchar(45)

)
AS

	BEGIN
	
		INSERT INTO Director(PeopleID , DirectorName) VALUES (NEXT VALUE FOR sPeopleID , @DirectorName)
	END
	
GO

	CREATE PROCEDURE Director_delete
(

	@PeopleID INT

)
AS

	BEGIN
	
		DELETE FROM Director WHERE PeopleID = @PeopleID
	END
	
GO

	CREATE PROCEDURE Director_update
(

	@PeopleID INT,
	@DirectorName nchar(30)

)
AS

	BEGIN
	
		SET  NOCOUNT ON
	
		UPDATE Director
		SET
		
		DirectorName = @DirectorName
		WHERE PeopleID = @PeopleID
	END
	
	GO


USE OnlineMovieDatabase

GO

CREATE PROCEDURE Genre_insert
(

	@GenreName nchar(30)

)
AS

	BEGIN
	
		INSERT INTO Genre(GenreID , GenreName) VALUES (NEXT VALUE FOR sGenreID , @GenreName)
	END
	
GO


	CREATE PROCEDURE Genre_delete
(

	@GenreID INT

)
AS

	BEGIN
	
		DELETE FROM Genre  WHERE GenreID = @GenreID
	END
	
GO

	CREATE PROCEDURE Genre_update
(

	@GenreID INT,
	@GenreName nchar(30)

)
AS

	BEGIN
	
		SET  NOCOUNT ON
	
		UPDATE Genre
		SET
		
		GenreName = @GenreName
		WHERE GenreID = @GenreID
	END

	GO

	USE OnlineMovieDatabase

	GO

	CREATE PROCEDURE UserRating_insert
	(

	@FilmID INT,
	@RatingPoint REAL,
	@UserID INT
	)
	AS
		BEGIN
				insert into UserRating (FilmID, RatingPoint, UserID) values(@FilmID, @RatingPoint, @UserID)
		END
	GO

	create procedure UserRating_delete
	(
		@UserID INT,
		@FilmID INT
	)
	AS
		BEGIN
				delete from UserRating where UserID = @UserID AND FilmID =@FilmID
		END
	GO

	create procedure UserRating_update
	(
	@UserID INT,
	@FilmID INT,
	@RatingPoint REAL
	)
	AS
		BEGIN
			SET NOCOUNT ON
			UPDATE UserRating
			SET
				FilmID = @FilmID,
				RatingPoint = @RatingPoint
				WHERE UserID = @UserID AND FilmID = @FilmID
		END

		GO

		USE OnlineMovieDatabase

		GO

		create procedure Actor_has_Award_insert
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				insert into Actor_has_Award (PeopleID, AwardID, AwardDate) values (@PeopleID, @AwardID, @AwardDate)
			END
		GO

		create procedure Actor_has_Award_delete
		(
		@PeopleID INT,
		@AwardID INT
		)
		AS
			BEGIN
				delete from Actor_has_Award where PeopleID = @PeopleID AND AwardID = @AwardID
			END
				
		GO

		create procedure Actor_has_Award_update
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Actor_has_Award
				SET
					AwardID = @AwardID,
					AwardDate = @AwardDate

					WHERE PeopleID = @PeopleID AND AwardID = @AwardID
			END
		GO

		USE OnlineMovieDatabase

		GO

			create procedure Director_has_Award_insert
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				insert into Director_has_Award (PeopleID, AwardID, AwardDate) values (@PeopleID, @AwardID, @AwardDate)
			END
		GO

		create procedure Director_has_Award_delete
		(
		@PeopleID INT,
		@AwardID INT
		)
		AS
			BEGIN
				delete from Director_has_Award where PeopleID = @PeopleID AND AwardID = @AwardID
			END
				
		GO

		create procedure Director_has_Award_update
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Director_has_Award
				SET
					AwardID = @AwardID,
					AwardDate = @AwardDate

					WHERE PeopleID = @PeopleID AND AwardID = @AwardID
			END
		GO

				USE OnlineMovieDatabase

		GO

			create procedure Scenarist_has_Award_insert
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				insert into Scenarist_has_Award (PeopleID, AwardID, AwardDate) values (@PeopleID, @AwardID, @AwardDate)
			END
		GO

		create procedure Scenarist_has_Award_delete
		(
		@PeopleID INT,
		@AwardID INT
		)
		AS
			BEGIN
				delete from Scenarist_has_Award where PeopleID = @PeopleID AND AwardID = @AwardID
			END
				
		GO

		create procedure Scenarist_has_Award_update
		(
		@PeopleID INT,
		@AwardID INT,
		@AwardDate nchar(45)
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Scenarist_has_Award
				SET
					AwardID = @AwardID,
					AwardDate = @AwardDate

					WHERE PeopleID = @PeopleID AND AwardID = @AwardID
			END
		GO

			USE OnlineMovieDatabase

		GO

		create procedure Films_has_Actors_insert
		(
			@PeopleID int,
			@FilmID int
		)
		AS
			BEGIN
				insert into Films_has_Actors(PeopleID, FilmID) values(@PeopleID, @FilmID)
			END
		GO

		create procedure Films_has_Actors_delete
		(
			@PeopleID int,
			@FilmID int
		)
		AS
			BEGIN
				delete from Films_has_Actors where PeopleID = @PeopleID AND FilmID = @FilmID
			END
		GO

		create procedure Films_has_Actors_update
		(
		@PeopleID INT,
		@FilmID INT
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Films_has_Actors
				SET
					PeopleID = @PeopleID,
					FilmID = @FilmID

					WHERE PeopleID = @PeopleID AND FilmID = @FilmID
			END
		GO

				USE OnlineMovieDatabase

		GO

		create procedure Films_has_Scenarist_insert
		(
			@PeopleID int,
			@FilmID int
		)
		AS
			BEGIN
				insert into Films_has_Scenarist(PeopleID, FilmID) values(@PeopleID, @FilmID)
			END
		GO

		create procedure Films_has_Scenarist_delete
		(
			@PeopleID int,
			@FilmID int
		)
		AS
			BEGIN
				delete from Films_has_Scenarist where PeopleID = @PeopleID AND FilmID = @FilmID
			END
		GO

		create procedure Films_has_Scenarist_update
		(
		@PeopleID INT,
		@FilmID INT
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Films_has_Scenarist
				SET
					PeopleID = @PeopleID,
					FilmID = @FilmID

					WHERE PeopleID = @PeopleID AND FilmID = @FilmID
			END
		GO

				USE OnlineMovieDatabase
		GO

			create procedure Genre_has_Films_insert
		(
			@FilmID int, 
			@GenreID int
		)
		AS
			BEGIN
				insert into Genre_has_Films(FilmID, GenreID) values(@FilmID, @GenreID)
			END
		GO

			create procedure Genre_has_Films_delete
		(
			@FilmID int, 
			@GenreID int
		)
		AS
			BEGIN
				delete from Genre_has_Films where FilmID = @FilmID AND GenreID = @GenreID
			END
		GO

			create procedure Genre_has_Films_update
		(
			@FilmID int,
			@GenreID int
		)
		AS
			BEGIN
				SET NOCOUNT ON
				UPDATE Genre_has_Films
			SET
				FilmID = @FilmID,
				GenreID = @GenreID
				WHERE FilmID = @FilmID AND GenreID = @GenreID
			 
			END
		GO

		USE OnlineMovieDatabase

		GO
			create procedure People_has_Language_insert
		(
			@PeopleID	int,
			@LanguageID int
		)
		AS
			BEGIN
				insert into People_has_Language(PeopleID, LanguageID) values(@PeopleID, @LanguageID)
			END
		GO
		
			create procedure People_has_Language_delete
		(
			@PeopleID int,
			@LanguageID int
		)
		AS
			BEGIN
				delete from People_has_Language where PeopleID = @PeopleID AND LanguageID = @LanguageID
			END
		GO

			create procedure People_has_Language_update
		(
			@PeopleID int,
			@LanguageID int
		)
		AS
			BEGIN
				SET NOCOUNT ON
					UPDATE People_has_Language
			SET
				PeopleID = @PeopleID,
				LanguageID = @LanguageID
				WHERE PeopleID = @PeopleID AND LanguageID = @LanguageID
			 
			END


	/*CREATE TRIGGER init_count ON Country AFTER INSERT

		DECLARE

			@CountryID INT;
			Count INTEGER INT;

		BEGIN
			Count := 0;

		END*/

		GO

		USE OnlineMovieDatabase

		GO

		DENY SELECT ON Actor TO kagan