{% macro rolling_agg(
    column_name,
    partition_by,
    order_by,
    period=7,
    agg_func='avg') %}
    {{agg_func}}( {{ column_name }} ) over (
                partition by {{ partition_by }}
                order by {{ order_by }}
                rows between 6  preceding and current row
            ) AS {{agg_func}}_{{period}}_periods_{{ column_name }}
{% endmacro %}
