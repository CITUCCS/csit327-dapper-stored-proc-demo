USE [master]
GO

/*** Delete db if exist ***/
DROP DATABASE IF EXISTS [SchoolDb]
GO

/*** Create db ***/
CREATE DATABASE [SchoolDb]
GO

/*** Use DB ***/
USE [SchoolDb]
GO

/*** Drop Table ***/
DROP TABLE IF EXISTS [dbo].[School]
GO
/*** Drop Table ***/
DROP TABLE IF EXISTS [dbo].[Student]
GO

/*** Create school table ***/
CREATE TABLE [dbo].[School]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name] NVARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(50) NOT NULL, 
    [Motto] NVARCHAR(50) NOT NULL, 
    [AverageTuition] DECIMAL(18,2) NOT NULL
)
GO

/** Insert school data **/
SET IDENTITY_INSERT [dbo].[School] ON
INSERT [dbo].[School] ([Id], [Name], [Address], [Motto], [AverageTuition]) 
VALUES 
    (1, 'CIT-U', 'N. Bacalso Ave, Cebu City', 'CCS IS THE BEST COLLEGE', 69.69),
    (2, 'USC', 'Somewhere bukid, Cebu City', 'Daghan gwapa ug gwapo', 34.35),
    (3, 'UC', 'Banilad, Cebu City', 'lewl', 20.00),
    (4, 'USJR', 'Atbang Colon, Cebu City', 'yayska', 50.00);

SET IDENTITY_INSERT [dbo].[School] OFF

CREATE TABLE [dbo].[Student] (
    [Id] INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    [Email] VARCHAR(255) NULL,
    [SchoolId] INTEGER NOT NULL,
    CONSTRAINT FK_StudentSchool FOREIGN KEY ([SchoolId]) REFERENCES [School]([Id])
);
GO

INSERT INTO [Student] (Name,Email,SchoolId)
VALUES
  ('Ivan Vazquez','non.ante@outlook.org',3),
  ('Lance Bullock','fermentum.metus@aol.ca',3),
  ('Leila Waters','nisl.nulla@outlook.edu',3),
  ('Hilda Odom','mollis@icloud.com',2),
  ('Nathan Rowe','auctor.vitae.aliquet@hotmail.com',1),
  ('Ramona Morse','feugiat.sed.nec@yahoo.edu',2),
  ('Dean Barrett','etiam.vestibulum@icloud.ca',3),
  ('Talon Gillespie','nostra.per.inceptos@hotmail.ca',2),
  ('Reese Simon','malesuada.malesuada@aol.edu',2),
  ('Barry Bullock','ullamcorper.eu@outlook.net',3),
  ('Gretchen Melendez','tellus.justo.sit@yahoo.ca',2),
  ('Aiko Mays','hendrerit.donec@yahoo.couk',3),
  ('Nina Downs','ac.turpis@google.net',2),
  ('Fletcher Marshall','malesuada.fringilla.est@hotmail.couk',3),
  ('Belle Camacho','luctus.ut@protonmail.com',3),
  ('Josiah Cole','massa.lobortis.ultrices@hotmail.ca',3),
  ('Lael Ramirez','nascetur.ridiculus@protonmail.ca',2),
  ('Florence Le','blandit.enim@google.net',2),
  ('Dale Riley','dapibus.quam.quis@icloud.net',3),
  ('Whitney Carpenter','vivamus.nisi.mauris@icloud.net',3);
INSERT INTO [Student] (Name,Email,SchoolId)
VALUES
  ('Nehru Stephens','cubilia.curae.donec@icloud.net',4),
  ('Kyra Livingston','non.hendrerit@aol.edu',1),
  ('Ezra Sharp','sapien@outlook.org',4),
  ('Abra Browning','augue.id@protonmail.com',3),
  ('Nora Haney','ipsum.dolor.sit@hotmail.ca',3),
  ('Elijah Summers','mauris@google.com',3),
  ('TaShya Dawson','ut.quam@hotmail.net',1),
  ('Hasad Crosby','vestibulum.massa.rutrum@aol.ca',3),
  ('Graiden O''connor','at@icloud.ca',4),
  ('Ivana Roy','urna@hotmail.couk',4),
  ('Velma Terrell','enim@icloud.couk',4),
  ('Tad Nieves','taciti@aol.org',2),
  ('Winter Kent','quisque@google.couk',3),
  ('Brett Albert','aliquam.enim@google.ca',4),
  ('Yael Mcdonald','sociis.natoque.penatibus@hotmail.edu',3),
  ('Garrison Baldwin','lorem.sit@outlook.couk',3),
  ('Martina Sharp','mauris.suspendisse@outlook.edu',3),
  ('Jael Santana','semper.cursus@outlook.org',4),
  ('Zena Woodard','dictum.eu@aol.net',3),
  ('Rooney Wood','ipsum.donec.sollicitudin@hotmail.couk',2);
INSERT INTO [Student] (Name,Email,SchoolId)
VALUES
  ('Octavia Emerson','luctus.aliquet@hotmail.net',3),
  ('Nathan Fernandez','nec.euismod@google.edu',3),
  ('Genevieve Benton','consequat.lectus@icloud.org',1),
  ('Kuame Klein','convallis.erat@protonmail.com',2),
  ('Mariam Suarez','vel.pede.blandit@protonmail.org',3),
  ('Dahlia Donaldson','adipiscing.non@yahoo.com',2),
  ('Ulric Cantu','sit@hotmail.ca',2),
  ('Ainsley Mccormick','nibh@hotmail.ca',3),
  ('Adele Young','libero.nec@yahoo.ca',3),
  ('Stuart Hancock','convallis.in@hotmail.couk',3);