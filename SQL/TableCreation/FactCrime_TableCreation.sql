DROP TABLE IF EXISTS FactCrime
CREATE TABLE FactCrime(
[ID] [int] NOT NULL PRIMARY KEY identity(1,1),
[Category ID] [char](50),
[context] [char](50),
[OutcomeStatusID] [int],
[outcome_status.date] date,
[location.street.id] [int],
Crime_Date [Date])

