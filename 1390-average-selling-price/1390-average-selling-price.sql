# Write your MySQL query statement below
select a.product_id,coalesce( round(sum(a.price*b.units)/sum(b.units),2),0) as average_price from Prices as a
left join UnitsSold as b on a.product_id=b.product_id
and b.purchase_date between a.start_date and end_date
group by product_id;
