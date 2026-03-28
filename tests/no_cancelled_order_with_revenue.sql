-- tests/no_cancelled_orders_with_revenue.sql

SELECT *
FROM {{ ref('fct_orders') }}
WHERE order_status = 'cancelled'
  AND amount > 0