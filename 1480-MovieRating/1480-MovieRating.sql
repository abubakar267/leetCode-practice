-- Last updated: 23/08/2025, 19:53:08
# Write your MySQL query statement below


SELECT name as results FROM (

(
SELECT u.name
FROM Users u
JOIN MovieRating mr ON u.user_id = mr.user_id
GROUP BY u.user_id, u.name
ORDER BY count(mr.rating) DESC, u.name ASC
LIMIT 1

)

union all

(select m.title from Movies as m
join MovieRating as mr on m.movie_id = mr.movie_id
where mr.created_at between '2020-02-01' and '2020-02-29' 
group by mr.movie_id
order by sum(mr.rating)/count(mr.movie_id) desc,m.title asc
limit 1
)  
) AS UnionedTable