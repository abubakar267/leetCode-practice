-- Last updated: 25/12/2025, 13:41:45
# Write your MySQL query statement below

select email from Person 
group by email
having count(id) > 1;