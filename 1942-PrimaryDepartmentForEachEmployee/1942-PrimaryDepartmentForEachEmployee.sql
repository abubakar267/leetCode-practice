-- Last updated: 24/08/2025, 01:01:50

select employee_id,department_id from Employee where primary_flag = 'Y'

union

select employee_id,department_id from Employee
group by employee_id
having count(employee_id) = 1

