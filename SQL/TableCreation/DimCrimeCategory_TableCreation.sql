DROP TABLE IF EXISTS DimCrimeCategory
CREATE TABLE DimCrimeCategory(
[Category ID] [int] NOT NULL PRIMARY KEY identity(1,1),
[Category] [char](50)
)