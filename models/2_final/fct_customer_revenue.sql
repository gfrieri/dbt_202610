-- models/final/fct_customer_revenue.sql

WITH customer_orders AS (
    SELECT
        id_pedido,
        id_cliente,
        fecha_pedido,
        monto_total,
        monto_total_centavos,
        moneda,
        estado_pedido,
        metodo_pago,
        monto_descuento,
        cantidad,
        nombre,
        codigo_pais,
        ciudad,
        codigo_postal,
        canal_registro,
        nivel_cliente,
        fecha_creacion,
        activo
    FROM {{ ref('int_customer_orders') }}
)

SELECT
    id_cliente,
    codigo_pais,
    ciudad,
    canal_registro,
    nivel_cliente,
    SUM(CASE WHEN estado_pedido = 'paid' THEN monto_total ELSE 0 END) AS ingresos_totales,
    SUM(monto_descuento) AS descuentos_totales,
    SUM(CASE WHEN estado_pedido = 'paid' THEN cantidad ELSE 0 END) AS cantidad_total,
    COUNT(DISTINCT id_pedido) AS total_pedidos,
    COUNT(CASE WHEN estado_pedido = 'paid' THEN id_pedido ELSE NULL END) AS pedidos_pagados
FROM customer_orders
GROUP BY 1, 2, 3, 4, 5