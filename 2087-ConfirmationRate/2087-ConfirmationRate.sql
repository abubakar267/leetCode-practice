-- Last updated: 22/08/2025, 02:03:18
# Write your MySQL query statement below

select s.user_id,
ROUND(IF(count(c.user_id) = 0,0,(SUM(c.action = 'confirmed') / COUNT(c.user_id))),2) as confirmation_rate
from Signups as s
left join Confirmations as c ON s.user_id = c.user_id
group by s.user_id
