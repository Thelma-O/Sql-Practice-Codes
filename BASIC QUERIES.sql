-- basic queries

SELECT *

FROM Fact_finance

where Amount >20000



SELECT DateKey, SUM(Amount) AS TotalAmount

FROM Fact_finance

WHERE Amount > 20000

GROUP BY AccountKey, DateKey



SELECT DateKey, SUM(Amount) AS TotalAmount

FROM Fact_finance

WHERE Amount > 20000

GROUP BY AccountKey, DateKey



