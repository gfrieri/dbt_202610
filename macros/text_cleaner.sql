{#Esta macro hace limpieza basica#}
{% macro limpiar_texto(columna) %}
    TRIM(UPPER({{ columna }}))
{% endmacro %}