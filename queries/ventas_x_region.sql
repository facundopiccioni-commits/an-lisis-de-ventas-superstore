SELECT
    region,
    ROUND(SUM(sales), 2)                                    AS ventas_totales,
    ROUND(SUM(profit), 2)                                   AS ganancia_total,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2)    AS margen_pct,
    COUNT(DISTINCT customer_id)                             AS clientes_unicos
FROM orders
GROUP BY region
ORDER BY ventas_totales DESC;