select customer_number from Orders
Group by customer_number
order by count(order_number)  desc
limit  1;