-- Retrieve the display names of every user
-- who has received the Badge that has been
-- awarded the most times, excluding those badges
-- that have been awarded over ten thousand times.
-- Order the result in descending order.
-- 1.1 marks: <12 operators
-- 1.0 marks: <15 operators
-- 0.9 marks: <20 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query

SELECT DisplayName
FROM User
JOIN Badge ON
Badge.UserId= User.Id
WHERE Name = (
    SELECT Name
    FROM Badge
    GROUP BY Name
    HAVING COUNT(Name) <10000
    Order by COUNT(Name) DESC LIMIT 1)
GROUP BY DisplayName
ORDER BY DisplayName DESC;