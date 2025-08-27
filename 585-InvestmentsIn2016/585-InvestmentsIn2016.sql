-- Last updated: 28/08/2025, 01:50:25

-- select Round(sum(tiv_2016),2) as tiv_2016 from (

select Round(sum(tiv_2016),2) as tiv_2016 from 
Insurance where (lat,lon) in

(
SELECT lat, lon
FROM Insurance
group by lat,lon
having count(*) = 1
)

and

tiv_2015 in 

(
    select tiv_2015 from Insurance 
    group by tiv_2015
    having count(tiv_2015) > 1
)
