-- CONSULTA 1: RESUMEN EJECUTIVO MENSUAL

SELECT MONTH(fecha_venta) AS mes,
       SUM(cantidad * precio_unitario) AS total_facturado,
              COUNT(id_venta) AS cantidad_pedidos,
                     AVG(cantidad * precio_unitario) AS ticket_promedio
 FROM ventas
 GROUP BY MONTH(fecha_venta);


 -- CONSULTA 2: RANKING DE PRODUCTOS

SELECT TOP 5 id_producto,
       SUM(cantidad) AS unidades_vendidas,
       SUM(cantidad * precio_unitario) AS total_facturado
       FROM ventas
       GROUP BY id_producto
       ORDER BY total_facturado DESC;


       -- CONSULTA 3: CLIENTES RECURRENTES

SELECT id_cliente,
COUNT(id_venta) AS cantidad_pedidos,
SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas 
GROUP BY id_cliente
HAVING COUNT(id_venta) > 1;


-- CONSULTA 4: MESES POR ENCIMA/POR DEBAJO DEL PROMEDIO

WITH facturacion_mensual AS (SELECT MONTH(fecha_venta) AS mes,
           SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY MONTH(fecha_venta)
)
SELECT mes,
       total_facturado,
CASE
    WHEN total_facturado > (
        SELECT AVG(total_facturado)
        FROM facturacion_mensual
    )
    THEN 'Por encima'
    ELSE 'Por debajo'
END AS comparacion_promedio
FROM facturacion_mensual;


-- HALLAZGOS FINALES

-- 1. En marzo se facturaron $6.444 en 10 pedidos, con un ticket promedio de $644,40.

-- 2. El producto ID 1 lidera la facturación con $3.600, aproximadamente el 55,9% del total.

-- 3. El cliente ID 1 es el cliente recurrente con mayor gasto, con $2.640 distribuidos en 2 pedidos.