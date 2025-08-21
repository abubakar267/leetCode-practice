-- Last updated: 22/08/2025, 02:03:23


select name from Employee where Id IN 

(select managerId from Employee group by managerId
having count(managerId) >=5)