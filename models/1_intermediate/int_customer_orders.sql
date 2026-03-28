-- models/intermediate/int_customer_orders.sql

WITH orders AS (
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
        cantidad
    FROM {{ ref('stg_orders') }}
),
customers AS (
    SELECT
        id_cliente,
        nombre,
        codigo_pais,
        ciudad,
        codigo_postal,
        canal_registro,
        nivel_cliente,
        fecha_creacion,
        activo
    FROM {{ ref('stg_customers') }}
)

SELECT
    o.id_pedido,
    o.id_cliente,
    o.fecha_pedido,
    o.monto_total,
    o.monto_total_centavos,
    o.moneda,
    o.estado_pedido,
    o.metodo_pago,
    o.monto_descuento,
    o.cantidad,
    c.nombre,
    c.codigo_pais,
    c.ciudad,
    c.codigo_postal,
    c.canal_registro,
    c.nivel_cliente,
    c.fecha_creacion,
    c.activo
FROM customers c
LEFT JOIN orders o
    ON c.id_cliente = o.id_cliente