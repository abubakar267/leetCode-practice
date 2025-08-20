-- Last updated: 20/08/2025, 21:42:54
# Write your MySQL query statement below

  select p.product_name,s.year,s.price from Product as p
  join sales as s on p.product_id = s.product_id