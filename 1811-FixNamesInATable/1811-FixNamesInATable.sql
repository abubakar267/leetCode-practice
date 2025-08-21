-- Last updated: 22/08/2025, 02:03:14
# Write your MySQL query statement below
select user_id , CONCAT(UPPER(SUBSTRING(name,1,1)) ,LOWER(SUBSTRING(name,2))) as "name" from Users
order by user_id asc
