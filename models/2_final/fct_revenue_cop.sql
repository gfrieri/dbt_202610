-- models/final/fct_revenue_cop.sql

WITH customer_orders AS (
    SELECT
        id_pedido,
        fecha_pedido,
        monto_total,
        moneda,
        estado_pedido,
        monto_descuento,
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
    id_pedido,
    fecha_pedido,
    SUM(CASE WHEN moneda = 'USD' THEN {{usd_to_cop('monto_total') }} ELSE monto_total END) AS monto_total_cop,
FROM customer_orders
WHERE estado_pedido = 'paid'
GROUP BY 1, 2