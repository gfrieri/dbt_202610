{% docs id_cliente %}
Identificador único del cliente.
Generado en el sistema transaccional y
propagado sin transformación a todas
las capas del warehouse.
{% enddocs %}

{% docs id_pedido %}
Identificador único del pedido.
Generado en el sistema transaccional y
propagado sin transformación a todas
las capas del warehouse.
{% enddocs %}

{% docs no_negative_values%}
Test para asegurar que los valores en la columna no sean negativos.
{% enddocs %}
