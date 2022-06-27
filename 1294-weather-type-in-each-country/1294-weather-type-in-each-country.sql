SELECT
    coun.country_name,
    (CASE
        WHEN AVG(weath.weather_state) <= 15 THEN 'Cold'
        WHEN AVG(weath.weather_state) >= 25 THEN 'Hot'
        ELSE 'Warm'
    END) AS weather_type
FROM Countries AS coun
LEFT JOIN Weather AS weath
    ON weath.country_id = coun.country_id
WHERE DATE_FORMAT(weath.day, '%Y-%m') = '2019-11'
GROUP BY country_name;