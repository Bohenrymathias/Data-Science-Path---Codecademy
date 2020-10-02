
-- 3. What years are covered by the dataset? - (you can manually count the number of years returned).

SELECT DISTINCT year FROM population_years;

-- 4. What is the largest population size for Gabon in this dataset?

SELECT population FROM population_years 
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1; 

-- 5. What were the 10 lowest population countries in 2005?

SELECT DISTINCT country FROM population_years
WHERE year = 2005
ORDER BY population DESC
LIMIT 10;


-- 6. What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country FROM population_years
WHERE year = 2010
	AND population > 100;


-- 7. How many countries in this dataset have the word “Islands” in their name?
SELECT COUNT(DISTINCT country) FROM population_years -- I had to look up how to DISTINCT with COUNT after trying for quite some time. But here it is! 9.
WHERE country LIKE '%Islands%';


-- 8. What is the difference in population between 2000 and 2010 in Indonesia? 

SELECT MAX(population) - MIN(population) AS 'Difference' -- This was the way I found to calculate the difference here in code.
FROM population_years
WHERE (year = 2000 OR year = 2010) --It was useful to be able to bunch up both these conditions within parenthesis.
	AND country = 'Indonesia';
	
