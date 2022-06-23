-- Retrieve by name and frequency the twenty unique Badges that have been awarded the most often after 2019
-- 1.1 marks: <7 operators
-- 1.0 marks: <9 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query

SELECT Name, COUNT(Name) as Frequency
FROM Badge 
WHERE Badge.Date > '2020-01-01'
GROUP BY Name
ORDER BY COUNT(Name) DESC
LIMIT 20;

