-- models/intermediate/int_customer_by_country.sql

SELECT
    id_cliente,
    nombre,
    codigo_pais,
    ciudad,
    canal_registro,
    nivel_cliente,
FROM {{ ref('stg_customers') }}
WHERE codigo_pais = '{{ var("filtro_pais", "CO") }}'