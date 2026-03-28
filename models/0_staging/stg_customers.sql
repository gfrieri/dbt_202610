-- models/staging/stg_customers.sql

SELECT
    customer_id AS id_cliente,
    name AS nombre,
    country_code AS codigo_pais,
    city AS ciudad,
    postal_code AS codigo_postal,
    signup_channel AS canal_registro,
    preferred_language AS idioma_preferido,
    customer_tier AS nivel_cliente,
    created_at AS fecha_creacion,
    is_active AS activo
FROM {{ source('raw_prueba', 'raw_customer_updated') }}