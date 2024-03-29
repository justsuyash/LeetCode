SELECT 
B.QUESTION_ID AS SURVEY_LOG
FROM 
(
    SELECT 
    QUESTION_ID,
    DENSE_RANK() OVER(ORDER BY A.RES_COUNT DESC, QUESTION_ID ASC) AS CRANK
    FROM 
    (
        SELECT
        QUESTION_ID,
        SUM(CASE WHEN ACTION = 'answer' THEN 1 ELSE 0 END)/ 
        SUM(CASE WHEN ACTION = 'show' THEN 1 ELSE 0 END) AS RES_COUNT
        FROM SURVEYLOG 
        GROUP BY QUESTION_ID
    ) A
)B
WHERE B.CRANK = 1