SELECT
    ship_mode,
    COUNT(*)                                            AS total_envios,
    ROUND(AVG(ship_date - order_date), 1)               AS dias_promedio_envio,
    MIN(ship_date - order_date)                         AS minimo_dias,
    MAX(ship_date - order_date)                         AS maximo_dias
FROM orders
GROUP BY ship_mode
ORDER BY dias_promedio_envio ASC;
