DROP TABLE IF EXISTS DimOutcomeStatus
CREATE TABLE DimOutcomeStatus(
[OutcomeStatusID] [int] NOT NULL PRIMARY KEY identity(1,1),
[OutcomeStatusCategory] [char](80)
)