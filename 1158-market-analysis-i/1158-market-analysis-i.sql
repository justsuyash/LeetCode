SELECT u.user_id as buyer_id, u.join_date, 
    SUM(
        CASE
            WHEN o.order_date >='2019-01-01' and o.order_date<='2019-12-31'             
			THEN 1
            ELSE 0 END
    ) as orders_in_2019 
        from Users u 
            LEFT JOIN Orders o on o.buyer_id=u.user_id 
                group by u.user_id;