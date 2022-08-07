/* Query for Dim Location */
SELECT TOP (*)
[location.street.id],
Location_type,
location_subtype,
[location.street.name],
[location.longitude],
[location.latitude]

from POLICEAPI_STAGING

Group by [location.street.id], Location_type, location_subtype,[location.street.name],[location.longitude],[location.latitude]

order by [location.street.id] Asc