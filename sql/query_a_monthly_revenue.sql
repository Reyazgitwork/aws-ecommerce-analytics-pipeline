-- Monthly Revenue Analysis

SELECT
    SUBSTR(o.order_purchase_timestamp, 1, 7) AS month,
    ROUND(SUM(p.payment_value), 2) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM raw_orders o
JOIN raw_order_payments p
    ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY SUBSTR(o.order_purchase_timestamp, 1, 7)
ORDER BY month;