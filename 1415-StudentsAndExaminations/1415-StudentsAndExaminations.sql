-- Last updated: 22/08/2025, 04:06:11
SELECT s.student_id,s.student_name,sb.subject_name,
CASE
    WHEN NewTable.attended_exam IS NULL THEN 0
    ELSE NewTable.attended_exam
END 
AS attended_exams
from Students as s
cross join Subjects as sb
left join 
 (select student_id,subject_name,count(subject_name) as "attended_exam" from Examinations 
group by student_id,subject_name) as NewTable
on NewTable.student_id = s.student_id and sb.subject_name = NewTable.subject_name
order by s.student_id,sb.subject_name asc