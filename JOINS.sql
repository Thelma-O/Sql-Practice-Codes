--INNERJOIN

SELECT 
	acc.AccountDescription, acc.AccountType, sc.ScenarioName, SUM(ff.Amount) AS TotalAmount

FROM Fact_finance AS ff
	INNER JOIN Dim_account AS acc
	ON ff.AccountKey = acc.AccountKey
	INNER JOIN Dim_scenario AS sc
	ON ff.ScenarioKey = sc.ScenarioKey
	
WHERE
	acc.AccountType IN ('Assets', 'Liabilities') AND sc.ScenarioName = 'Actual' 

GROUP BY 
	acc.AccountDescription, acc.AccountType, sc.ScenarioName

ORDER BY 
	TotalAmount DESC;




--LEFT JOIN
SELECT 
		dg.DepartmentGroupName, ff.Date, SUM(ff.Amount) AS TotalAmount

FROM 
		Fact_finance AS ff
	LEFT JOIN Dim_dept_group AS dg
	ON ff.DepartmentGroupKey = dg.DepartmentGroupKey

WHERE 
		dg.DepartmentGroupName = 'Corporate' OR ff.Amount > 10000 

GROUP BY	
		dg.DepartmentGroupName, ff.Date

ORDER BY 
		TotalAmount DESC;




--RIGHT JOIN
SELECT  
    ff.AccountKey, org.PercentageOfOwnership, SUM(ff.Amount) AS TotalAmount

FROM 
    Fact_finance AS ff
RIGHT JOIN  Dim_organization AS org
ON ff.OrganizationKey = org.OrganizationKey

WHERE 
    org.OrganizationName != 'Southeast Division'

GROUP BY 
    ff.AccountKey, org.PercentageOfOwnership

ORDER BY 
    TotalAmount DESC;




--FULL OUTER JOIN

SELECT 
		sc.ScenarioName, SUM(ff.Amount) AS TotalAmount


FROM
		Fact_finance AS ff
	FULL OUTER JOIN Dim_scenario AS sc
	ON ff.ScenarioKey = sc.ScenarioKey
	

WHERE 
		sc.ScenarioName IN ('Actual', 'Budget') 


GROUP BY 
		sc.ScenarioName

ORDER BY 
		TotalAmount DESC;






