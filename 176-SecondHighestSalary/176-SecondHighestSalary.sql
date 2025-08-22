-- Last updated: 22/08/2025, 18:17:08
SELECT (select distinct salary from Employee
order by salary desc
limit 1 offset 1 ) AS SecondHighestSalary
