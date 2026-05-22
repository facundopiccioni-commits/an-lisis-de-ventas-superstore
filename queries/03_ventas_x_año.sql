SELECT
    EXTRACT(YEAR FROM order_date)   AS anio,
    ROUND(SUM(sales), 2)            AS ventas_totales,
    ROUND(SUM(profit), 2)           AS ganancia_total,
    COUNT(DISTINCT order_id)        AS total_ordenes
FROM orders
GROUP BY anio
ORDER BY anio ASC;
