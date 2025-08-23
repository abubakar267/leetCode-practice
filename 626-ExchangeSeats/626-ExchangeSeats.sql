-- Last updated: 23/08/2025, 19:53:11
select * from ((SELECT IF(id%2 = 1,id+1,id-1) as id ,student from (

select * from Seat
where id <>

CASE
    WHEN (select count(id) from Seat) % 2 = 1 then
    (select max(id) from Seat)
    else -1
END
) as NewTable

order by id asc)

union
(
select id,student from Seat where id = (
SELECT IF(MAX(id)%2 = 1,MAX(id),null) as id from Seat)

)
) as NewestTable
order by id asc



