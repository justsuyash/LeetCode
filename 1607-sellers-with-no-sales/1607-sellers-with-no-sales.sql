SELECT seller_name
FROM 
Seller AS seller
LEFT JOIN 
(SELECT seller_id,sale_date 
 FROM Orders 
 WHERE YEAR(sale_date) = 2020
 ) orderst         
ON  orderst.seller_id = seller.seller_id
WHERE orderst.sale_date IS NULL
ORDER BY seller_name ASC