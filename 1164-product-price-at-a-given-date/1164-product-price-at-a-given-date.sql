SELECT
    DISTINCT product_id,
    10 AS price
FROM Products
GROUP BY product_id
HAVING (MIN(change_date) > "2019-08-16")
UNION
SELECT
    prod_2.product_id,
    new_price AS price
FROM Products AS prod_2
WHERE (prod_2.product_id, prod_2.change_date) IN
(SELECT
    product_id,
    MAX(change_date) AS change_date
FROM Products
WHERE change_date <= "2019-08-16"
GROUP BY product_id
)