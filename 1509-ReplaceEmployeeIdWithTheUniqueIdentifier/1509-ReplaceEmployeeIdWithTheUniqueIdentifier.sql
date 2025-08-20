-- Last updated: 20/08/2025, 20:53:09
# Write your MySQL query statement bel


select e.name,eu.unique_id from Employees as e
LEFT JOIN EmployeeUNI as eu ON e.id = eu.id