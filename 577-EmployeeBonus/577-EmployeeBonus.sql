-- Last updated: 21/08/2025, 00:08:02
# Write your MySQL query statement below
select e.name,b.bonus from Employee as e
LEFT JOIN Bonus as b
on e.empId = b.empId
WHERE b.bonus<1000 OR b.bonus IS NULL

