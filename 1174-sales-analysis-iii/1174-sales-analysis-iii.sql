SELECT DISTINCT a.product_id, a.product_name
FROM Product AS a
JOIN Sales AS b
ON a.product_id = b.product_id
group by a.product_id,a.product_name
having min(b.sale_date)>= '2019-01-01' AND max(b.sale_date)<='2019-03-31';
