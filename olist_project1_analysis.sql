-- Olist Brazilian E-Commerce: Project 1 analysis queries (SQLite)
-- All revenue figures use delivered orders only.

-- 1. Total revenue
SELECT SUM(i.price) AS total_revenue
FROM olist_order_items_dataset i
JOIN olist_orders_dataset o ON i.order_id = o.order_id
WHERE o.order_status = 'delivered';

-- 2. Top 10 product categories by revenue
SELECT p.product_category_name,
       SUM(i.price) AS total_revenue
FROM olist_order_items_dataset i
JOIN olist_products_dataset p ON i.product_id = p.product_id
JOIN olist_orders_dataset o ON i.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 3. Top 10 sellers by revenue
SELECT i.seller_id,
       SUM(i.price) AS total_revenue
FROM olist_order_items_dataset i
JOIN olist_orders_dataset o ON i.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY i.seller_id
ORDER BY total_revenue DESC
LIMIT 10;

-- 4. Top 10 customers by spending
SELECT c.customer_id,
       SUM(i.price) AS total_spending
FROM olist_order_items_dataset i
JOIN olist_orders_dataset o ON i.order_id = o.order_id
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_id
ORDER BY total_spending DESC
LIMIT 10;

-- 5. Average delivery time (days, purchase to customer delivery)
SELECT AVG(JULIANDAY(order_delivered_customer_date) - JULIANDAY(order_purchase_timestamp)) AS avg_delivery_days
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL
  AND order_purchase_timestamp IS NOT NULL
  AND order_status = 'delivered';
