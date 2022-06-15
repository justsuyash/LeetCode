WITH sub AS(
SELECT IF(COUNT(num)=1,num,NULL) as num
FROM MyNumbers
GROUP BY num)
SELECT MAX(num) as num
FROM sub