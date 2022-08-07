/*DimOutcomeStatus*/
SELECT        [outcome_status.category]
FROM            POLICEAPI_STAGING
GROUP BY [outcome_status.category]
ORDER BY [outcome_status.category]