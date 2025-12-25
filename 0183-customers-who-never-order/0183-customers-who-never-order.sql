# Write your MySQL query statement below

select name as Customers from Customers

where id NOT IN (
    select id from 
        (select c.id from Customers as c 
        join Orders as o on c.id = o.customerId
        ) as newTable2
);