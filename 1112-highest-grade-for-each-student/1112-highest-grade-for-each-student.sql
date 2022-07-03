WITH TABLE_1
AS
(
SELECT student_id , course_id , grade
,RANK() OVER(PARTITION BY student_id ORDER BY grade DESC, course_id ASC) AS RANKED
FROM Enrollments
)
SELECT student_id , course_id , grade
FROM TABLE_1
WHERE RANKED = 1;