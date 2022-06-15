

With temp AS
(SELECT student_id, MAX(grade) AS grade
FROM Enrollments
GROUP BY 1)

SELECT temp.student_id, MIN(e.course_id) AS course_id, temp.grade
FROM temp
LEFT JOIN Enrollments e
ON e.student_id = temp.student_id AND e.grade = temp.grade
GROUP BY 1
ORDER BY 1;
