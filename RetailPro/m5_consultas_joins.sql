-- =============================================
-- M5 - CONSULTAS CON JOINS
-- Proyecto RetailPro
-- =============================================

USE Ventas_Tech_DB;
GO


-- =============================================
-- CONSULTA 1 - VISTA BASE DEL PROYECTO
-- =============================================

SELECT
    v.fecha_venta AS fecha,
    c.id_cliente,
    c.nombre AS cliente,
    c.email,
    p.id_producto,
    p.nombre_producto AS producto,
    ca.nombre_categoria AS categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
INNER JOIN clientes c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos p
    ON v.id_producto = p.id_producto
INNER JOIN categorias ca
    ON p.id_categoria = ca.id_categoria
ORDER BY v.fecha_venta;



-- =============================================
-- CONSULTA 2 - CLIENTES SIN VENTAS
-- =============================================

SELECT
    c.nombre AS cliente,
    c.email,
    c.fecha_registro
FROM clientes c
LEFT JOIN ventas v
    ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;



-- =============================================
-- CONSULTA 3 - PRODUCTOS SIN VENTAS
-- =============================================

SELECT
    p.nombre_producto AS producto,
    ca.nombre_categoria AS categoria,
    p.precio
FROM productos p
LEFT JOIN ventas v
    ON p.id_producto = v.id_producto
INNER JOIN categorias ca
    ON p.id_categoria = ca.id_categoria
WHERE v.id_venta IS NULL;


-- =============================================
-- CONSULTA 4 - CONSOLIDADO POR CANAL
-- =============================================

SELECT
    canal,
    SUM(total_venta) AS total_facturado
FROM (
    SELECT
        fecha_venta AS fecha,
        cantidad * precio_unitario AS total_venta,
        'Primera quincena' AS canal
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta AS fecha,
        cantidad * precio_unitario AS total_venta,
        'Segunda quincena' AS canal
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS ventas_por_canal
GROUP BY canal
ORDER BY canal;