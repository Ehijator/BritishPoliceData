DROP TABLE IF EXISTS DimLocation
CREATE TABLE DimLocation
(
[location.street.id] [int],
[Location_type] [char](20),
[location_subtype] [char](20),
[location.street.name] [char](60),
[location.longitude] [decimal](9,6), 
[location.latitude] [decimal](8,6),
)