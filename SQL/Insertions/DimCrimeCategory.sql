/*DimCrimeCategory insertion*/

with DimCrimeCategoryCTE as (
	SELECT        Category
	FROM          POLICEAPI_STAGING as St
	GROUP BY st.Category
	
	)
insert into DimCrimeCategory(
DimCrimeCategory.Category
)
select * from DimCrimeCategoryCTE as CTE
ORDER BY CTE.Category
