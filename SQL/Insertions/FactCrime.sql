/* Fact Crime Insertion */

with FactCrimeCTE as (
	select 
	DCC.[Category ID],
	context,
	DOS.OutcomeStatusID,
	cast(concat(trim([outcome_status.date]),'-01')as date) as Outcome_status_date,
	[location.street.id],
	cast(concat(trim(month),'-01')as date) as Crime_Date
	from POLICEAPI_STAGING as st
	inner join DimCrimeCategory as DCC on (DCC.Category = st.Category)
	inner join DimOutcomeStatus as DOS on (DOS.OutcomeStatusCategory = st.[outcome_status.category])
	)

insert into FactSales(
[Category ID] ,
[context] ,
[OutcomeStatusID],
[outcome_status.date],
[location.street.id],
Crime_Date)

select * from FactCrimeCTE





