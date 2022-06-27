WITH wimbledon_counts AS
(
SELECT Wimbledon AS player_id, COUNT(year) AS count_wins
FROM
Championships
GROUP BY Wimbledon
),

fropen_counts AS
(
SELECT Fr_open AS player_id, COUNT(year) AS count_wins
FROM
Championships
GROUP BY Fr_open
),

usopen_counts AS
(
SELECT US_open AS player_id, COUNT(year) AS count_wins
FROM
Championships
GROUP BY US_open
),

au_open AS
(
SELECT Au_open AS player_id, COUNT(year) AS count_wins
FROM
Championships
GROUP BY Au_open
),

union_wins AS
(
SELECT player_id, SUM(count_wins) AS grand_slams_count FROM
(
SELECT * FROM wimbledon_counts
UNION ALL
SELECT * FROM fropen_counts
UNION ALL
SELECT * FROM usopen_counts
UNION ALL
SELECT * FROM au_open
) t1 GROUP BY player_id
)

SELECT a.player_id, a.player_name, grand_slams_count
FROM Players a LEFT JOIN union_wins b ON a.player_id=b.player_id
WHERE grand_slams_count IS NOT NULL;