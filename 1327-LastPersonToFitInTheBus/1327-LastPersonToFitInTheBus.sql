-- Last updated: 28/08/2025, 01:50:22
select q1.person_name
from Queue as q1
join Queue as q2 on q1.turn >= q2.turn
group by q1.turn
having sum(q2.weight) <= 1000
order by q1.turn desc
limit 1
