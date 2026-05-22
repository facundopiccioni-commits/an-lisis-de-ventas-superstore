# Análisis de Ventas - Superstore Retail
 
Análisis end-to-end de ventas de una tienda retail usando PostgreSQL y Power BI. El proyecto cubre desde la limpieza e importación de datos hasta la visualización de insights de negocio en un dashboard interactivo.

## Proceso
### 1. Limpieza y carga de datos
El archivo CSV original presentó algunos problemas que fueron resueltos previo a la importación
- Comillas innecesarias y sin cerrar que hacían que se produzcan errores cuando se intentaba cargar
- Formato de fecha incompaitble al momento de la carga

### 2. Análisis SQL
Se desarrollaron 7 queries para responder preguntas de negocio:
| Query | Pregunta de negocio |
|-------|---------------------|
| Ventas por categoría | ¿Cuál categoría vende más y cuál es más rentable? |
| Margen por subcategoría | ¿Qué productos específicos tienen margen negativo? |
| Evolución anual | ¿El negocio está creciendo año a año? |
| Ventas por región | ¿Qué regiones tienen mejor performance? |
| Top 10 clientes | ¿Qué clientes generan más valor real? |
| Impacto del descuento | ¿A partir de qué descuento se pierde dinero? |
| Tiempos de envío | ¿Los métodos de envío cumplen sus tiempos? |

### 3. Dashboard Power BI
Dashboard de 4 páginas conectado directamente a PostgreSQL:
 
- **Resumen General** — KPIs principales, ventas por categoría y evolución temporal
- **Rentabilidad** — margen por subcategoría, impacto de descuentos, ventas vs ganancia
- **Seguimiento Geográfico** — mapa por estado, ranking de ciudades, rentabilidad por región
- **Análisis de Clientes** — segmentación, top clientes y evolución por segmento

## Principales hallazgos
 
- **Furniture tiene margen crítico:** vende $742K pero gana solo $18K. Tables y Bookcases tienen con margen negativo (-8.56% y -3.02%).
- **El negocio crece consistentemente:** ventas pasaron de $484K en 2014 a $733K en 2017, con un crecimiento notable en el segundo semestre de cada año.
- **Labels y Paper son los productos más rentables:** márgenes de 44% y 43% respectivamente.
- **Los descuentos destruyen el margen:** a partir del 20% de descuento la ganancia promedio por orden pasa a ser negativa. El rango 31-50% genera pérdidas promedio de $156 por orden.
- **Central es la región más ineficiente:** tercer lugar en ventas pero margen de solo 7.92%, menos de la mitad que West (14.94%).
- **Consumer representa la mayoría de nuestros clientes:** Mientras que Home Office y Corporate representan el 18,7% y el 30,7% de las ventas, Consumer lidera con 50,6%.
