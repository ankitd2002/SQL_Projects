-- Note: Aspects of this are *very* tricky
-- Retrieve the display name of all users who have
-- never posted a post that has been linked by another post
-- ordered ascending
-- 1.1 marks: <8 operators
-- 1.0 marks: <10 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query

SELECT DisplayName
FROM User
WHERE User.Id NOT IN(
    SELECT User.Id
    FROM Post
    JOIN Link ON
    Post.Id = Link.RelatedPostId
    JOIN User ON
    User.Id= Post.OwnerUserID)
ORDER BY DisplayName ASC;




