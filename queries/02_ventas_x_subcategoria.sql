SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2)                                    AS ventas_totales,
    ROUND(SUM(profit), 2)                                   AS ganancia_total,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2)    AS margen_pct
FROM orders
GROUP BY category, sub_category
ORDER BY margen_pct ASC;
