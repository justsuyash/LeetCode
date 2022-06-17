# Write your MySQL query statement below

with friends as
(
select 
    case when user1_id = 1 then user2_id 
    when user2_id = 1 then user1_id
    end as friends
    from Friendship

)
select distinct(page_id) as recommended_page from likes as l join friends as f on user_id=friends where page_id not in ( select page_id from Likes where user_id=1);