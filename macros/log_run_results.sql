-- macros/log_results.sql
{% macro log_run_results() %}
  {% if execute %}
    {% for result in results %}
      {% set query %}
        insert into audit.dbt_run_log values (
          '{{ result.node.unique_id }}',
          '{{ result.status }}',
          {{ result.execution_time }},
          current_timestamp
        )
      {% endset %}
      {% do run_query(query) %}
    {% endfor %}
  {% endif %}
{% endmacro %}