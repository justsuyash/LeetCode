# Write your MySQL query statement below

select st.student_id, st.student_name, su.subject_name, ifnull(cnt,0) as attended_exams from students as st cross join subjects as su left join

( select student_id,subject_name,count(*) as cnt from examinations group by student_id,subject_name ) as e on e.student_id = st.student_id and e.subject_name=su.subject_name order by st.student_id,su.subject_name