
select * 
from FactCrime
inner join DimCrimeCategory on (dimCrimeCategory.[Category ID] = FactCrime.[Category ID])
inner join DimLocation on (DimLocation.[location.street.id] = FactCrime.[location.street.id])
inner join DimOutcomeStatus on (DimOutcomeStatus.OutcomeStatusID = FactCrime.OutcomeStatusID)

