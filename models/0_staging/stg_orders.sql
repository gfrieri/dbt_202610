-- models/staging/stg_orders.sql

SELECT
    order_id AS id_pedido,
    customer_id AS id_cliente,
    order_date AS fecha_pedido,
    amount AS monto_total,
    amount_cents AS monto_total_centavos,
    currency AS moneda,
    order_status AS estado_pedido,
    payment_method AS metodo_pago,
    discount_amount AS monto_descuento,
    item_count AS cantidad
FROM {{ source('raw_prueba_updated', 'raw_orders_updated') }}