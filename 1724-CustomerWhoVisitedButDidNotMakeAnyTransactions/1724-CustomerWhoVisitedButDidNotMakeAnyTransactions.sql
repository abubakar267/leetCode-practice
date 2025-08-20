-- Last updated: 20/08/2025, 21:42:56
# Write your MySQL query statement below

select v.customer_id,COUNT(*) as count_no_trans from Visits as v
left join transactions as t on v.visit_id = t.visit_id
where t.transaction_id IS NULL
GROUP BY v.customer_id