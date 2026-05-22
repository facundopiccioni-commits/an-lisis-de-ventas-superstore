SELECT 
    category,
    COUNT(order_id)         AS total_ordenes,
    ROUND(SUM(sales), 2)    AS ventas_totales,
    ROUND(SUM(profit), 2)   AS ganancia_total,
    ROUND(AVG(discount), 2) AS descuento_promedio
FROM orders
GROUP BY category
ORDER BY ventas_totales DESC;
