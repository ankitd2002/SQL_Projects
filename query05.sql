-- Retrieve by name and frequency and ordered by increasing name
-- those unique Badges that have been awarded at least five times,
-- but never before 2014 and never after 2019
-- 1.1 marks: <6 operators
-- 1.0 marks: <8 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query  // this query is efficient gives me 5 operators which is less than 7 operators

SELECT Name, COUNT(Name) as Frequency
FROM Badge 
GROUP BY Name
HAVING COUNT(Name) >= 5 AND MAX(Badge.Date) <= '2019-12-31 11:59:59' AND  MIN(Badge.Date) >='2014-1-1 11:59:59'
ORDER BY Name ASC;
