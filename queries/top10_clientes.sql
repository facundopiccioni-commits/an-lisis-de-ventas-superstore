SELECT
    customer_id,
    customer_name,
    segment,
    COUNT(DISTINCT order_id)        AS total_ordenes,
    ROUND(SUM(sales), 2)            AS ventas_totales,
    ROUND(SUM(profit), 2)           AS ganancia_total
FROM orders
GROUP BY customer_id, customer_name, segment
ORDER BY ganancia_total DESC
LIMIT 10;