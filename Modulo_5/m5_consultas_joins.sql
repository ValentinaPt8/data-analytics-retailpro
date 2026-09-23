-- CONSULTA 1: VISTA BASE DEL PROYECTO (INNER JOIN)

SELECT
    v.fecha_venta,
    c.nombre AS cliente,
        p.nombre_producto AS producto,
    cat.nombre_categoria AS categoria,
        v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta
    FROM ventas v
    INNER JOIN clientes c
    ON v.id_cliente = c.id_cliente
    INNER JOIN productos p
    ON v.id_producto = p.id_producto
    INNER JOIN categorias cat
    ON p.id_categoria = cat.id_categoria;


    -- CONSULTA 2: CLIENTES SIN VENTAS (LEFT JOIN)

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
    FROM clientes c
    LEFT JOIN ventas v
    ON c.id_cliente = v.id_cliente
    WHERE v.id_venta IS NULL;


    -- CONSULTA 3: PRODUCTOS SIN VENTAS (LEFT JOIN)

SELECT
    p.nombre_producto AS producto,
    cat.nombre_categoria AS categoria,
    p.precio
    FROM productos p
    LEFT JOIN ventas v
    ON p.id_producto = v.id_producto
    INNER JOIN categorias cat
    ON p.id_categoria = cat.id_categoria
    WHERE v.id_producto IS NULL;


-- CONSULTA 4: CONSOLIDADO POR CANAL (UNION ALL)

SELECT
    canal,
    SUM(total) AS total_facturado
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Canal A' AS canal
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Canal B' AS canal
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS ventas_por_canal
GROUP BY canal;