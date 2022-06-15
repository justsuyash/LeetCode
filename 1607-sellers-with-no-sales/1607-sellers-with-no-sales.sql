select s.seller_name
from seller s
     left outer join orders o on (s.seller_id = o.seller_id
                                 and extract(year from sale_date) = 2020)
where o.seller_id is null
order by seller_name