-- Average Review Score by Product Category

SELECT
    t.product_category_name_english AS category,
    ROUND(AVG(r.review_score), 2) AS avg_review,
    COUNT(r.review_id) AS review_count
FROM raw_reviews r
JOIN raw_orders o
    ON r.order_id = o.order_id
JOIN raw_order_items i
    ON o.order_id = i.order_id
JOIN raw_products pr
    ON i.product_id = pr.product_id
JOIN raw_category_translation t
    ON pr.product_category_name = t.product_category_name
GROUP BY t.product_category_name_english
HAVING COUNT(r.review_id) > 100
ORDER BY avg_review DESC;