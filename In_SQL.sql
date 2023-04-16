
 SELECT *
    FROM international_debt
    LIMIT 10;
	
	
	SELECT 
    COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

SELECT 
    ROUND(SUM(debt)/1000000, 2) AS total_debt
FROM international_debt;


SELECT 
    country_name, 
    SUM (debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;


SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    AVG (debt) AS average_debt
FROM international_debt
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;


SELECT 
    country_name, 
    indicator_code, 
    MAX (debt) AS maximum_debt
FROM international_debt
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;
