SELECT
    CASE
        WHEN discount = 0          THEN '0% - Sin descuento'
        WHEN discount <= 0.10      THEN '1% - 10%'
        WHEN discount <= 0.20      THEN '11% - 20%'
        WHEN discount <= 0.30      THEN '21% - 30%'
        WHEN discount <= 0.50      THEN '31% - 50%'
        ELSE                            'Mas de 50%'
    END                                     AS rango_descuento,
    COUNT(*)                                AS total_ordenes,
    ROUND(AVG(profit), 2)                   AS ganancia_promedio,
    ROUND(AVG(sales), 2)                    AS venta_promedio
FROM orders
GROUP BY rango_descuento
ORDER BY rango_descuento ASC;