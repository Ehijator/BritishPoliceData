DROP TABLE IF EXISTS POLICEAPI_STAGING 
CREATE TABLE POLICEAPI_STAGING(

[Index] [int] NOT NULL PRIMARY KEY identity,
[Category] [char](50),
[Location_type] [char](50),
[context] [char](50),
[outcome_status] [char](50),
[persistent_id] [char](225),
[id] [int],
[location_subtype] [char](30),
[month] [char](30),
[location.latitude] [decimal](8,6),
[location.street.id] [int],
[location.street.name] [char](50),
[location.longitude] [decimal](9,6),
[outcome_status.category] [char](225),
[outcome_status.date] [char](30)   
)