/* Query for Dim Location */
with DimLocationCTE as (
SELECT 
[location.street.id],
Location_type,
location_subtype,
[location.street.name],
[location.longitude],
[location.latitude]

from [PoliceAPI].[dbo].[POLICEAPI_STAGING]

Group by [location.street.id], Location_type, location_subtype,[location.street.name],[location.longitude],[location.latitude]

)
insert into [PoliceAPI].[dbo].[DimLocation]
([location.street.id],
Location_type,
location_subtype,
[location.street.name],
[location.longitude],
[location.latitude])


select * from DimLocationCTE


