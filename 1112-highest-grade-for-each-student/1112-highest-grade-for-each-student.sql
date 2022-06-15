with temp as
(
select student_id,max(grade) as grade from enrollments group by student_id
)
select temp.student_id, min(e.course_id) as course_id, temp.grade from temp left join enrollments as e on e.student_id=temp.student_id and e.grade=temp.grade group by 1 order by student_id asc;



