-- Last updated: 24/08/2025, 01:01:52
# Write your MySQL query statement below

select e.employee_id,e.name,e2.reports_count,e2.average_age from Employees as e 

join 


(select reports_to,count(reports_to) as reports_count,ROUND(sum(age)/count(reports_to)) as average_age from Employees
where reports_to is not NULL
group by reports_to)

as e2 on e.employee_id = e2.reports_to

order by e.employee_id asc

