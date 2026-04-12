-- Top 10 Product Categories by Revenue

SELECT
    t.product_category_name_english AS category,
    ROUND(SUM(p.payment_value), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS orders
FROM raw_orders o
JOIN raw_order_items i
    ON o.order_id = i.order_id
JOIN raw_products pr
    ON i.product_id = pr.product_id
JOIN raw_category_translation t
    ON pr.product_category_name = t.product_category_name
JOIN raw_order_payments p
    ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY t.product_category_name_english
ORDER BY revenue DESC
LIMIT 10;