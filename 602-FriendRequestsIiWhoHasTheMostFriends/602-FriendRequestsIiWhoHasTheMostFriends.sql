-- Last updated: 23/08/2025, 19:53:12
# Write your MySQL query statement below

select requester_id as id, mycount2 as num from

(
select requester_id,sum(mycount) as mycount2 from
(
select requester_id,count(requester_id) as mycount from RequestAccepted
group by requester_id

union all

select accepter_id,count(accepter_id) from RequestAccepted
group by accepter_id) as newTable

group by requester_id

) as finalTable 
order by mycount2 desc
limit 1