-- Q1: List all customers from Mumbai along with their total order value
SELECT 
    c.customer_name,
    SUM(p.unit_price * oi.quantity) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2: Find the top 3 products by total quantity sold
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3: List all sales representatives and the number of unique customers they have handled
SELECT 
    s.sales_rep_name,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM sales_reps s
LEFT JOIN orders o ON s.sales_rep_id = o.sales_rep_id
GROUP BY s.sales_rep_name;

