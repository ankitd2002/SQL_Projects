-- Retrieve the name and Date of all Badges obtained by
-- the user with ID 3 awarded after 2011,
-- ordered by ascending date
-- 1.1 marks: <5 operators
-- 1.0 marks: <6 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query  // this one i can get 1.1 marks very easily and stuff

SELECT Name,Date
FROM Badge
WHERE Badge.Date > '2011-12-31' 
AND  Badge.UserId = '3'
ORDER BY Date ASC;