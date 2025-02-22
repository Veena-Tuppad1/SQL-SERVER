SELECT TOP 1 WITH TIES order_id, customer_id, order_date as latest_date, total_amount as latestorder_amount
    FROM orders
    ORDER BY ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date )


	select * from orders