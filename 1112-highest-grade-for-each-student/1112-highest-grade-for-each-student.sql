select student_id,course_id, grade from (
    
    select student_id,course_id,grade, Dense_Rank() over ( partition by student_id order by grade desc, course_id) as rnk from Enrollments
    ) as a where rnk=1; 