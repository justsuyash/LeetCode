#identify all friends of user 1
WITH cte AS (SELECT user2_id FROM Friendship WHERE user1_id = 1
UNION
SELECT user1_id FROM Friendship WHERE user2_id = 1 )


SELECT distinct page_id as recommended_page FROM likes
WHERE user_id in (select * from cte)
and page_id not in (SELECT page_id FROM likes where user_id =1)

