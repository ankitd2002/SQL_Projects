-- Retrieve each unique pair
-- of badges by name that were last
-- awarded on the same day.
-- Sort in ascending order,
-- first by the first badge.
-- 1.1 marks: <10 operators
-- 1.0 marks: <14 operators
-- 0.9 marks: <20 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query

SELECT s.Name as 'FirstName', s.Name as 'SecondName', DATE(s.Date) as 'Date'
FROM Badge as s
    Left JOIN (
        SELECT Id, Name, MAX(Date) as Date
    FROM Badge
    GROUP BY Date) as t ON DATE(s.Date) = DATE(t.Date)

WHERE s.Id < t.Id and DATE(s.Date)=DATE(t.Date)
ORDER BY s.Name




