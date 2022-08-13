/*DimOutcomeStatus*/
with DimOutcomeStatusCTE as (
	SELECT        [outcome_status.category]
	FROM            POLICEAPI_STAGING
	GROUP BY [outcome_status.category]
	
	)

insert into DimOutcomeStatus(
OutcomeStatusCategory
)
select * from DimOutcomeStatusCTE
ORDER BY DimOutcomeStatusCTE.[outcome_status.category]

