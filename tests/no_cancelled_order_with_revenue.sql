-- tests/no_cancelled_orders_with_revenue.sql
{{ config(
    severity='warn'
) }}

SELECT *
FROM {{ ref('stg_orders') }}
WHERE estado_pedido = 'cancelled'
  AND monto_total > 0