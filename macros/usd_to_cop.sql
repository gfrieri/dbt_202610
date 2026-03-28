{% macro usd_to_cop(columna_usd) %}
    {{ columna_usd }} * 5000
{% endmacro %}