-- Last updated: 22/08/2025, 02:03:16
# Write your MySQL query statement below


select 'Low Salary' as category, SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 end) as "accounts_count" FROM Accounts
UNION
select 'Average Salary' as category, SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 end) as "accounts_count" FROM Accounts
UNION
select 'High Salary' as category, SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 end) as "accounts_count" FROM Accounts
