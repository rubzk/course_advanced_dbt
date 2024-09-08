{% macro adjust_month(
    start_month,
    end_month
) %}

case
    when {{ start_month }} =  {{ end_month}} then DATEADD('month', 1, {{ end_month}})
    when  {{ end_month}} is null then date(dateadd('month', 1, date_trunc('month', CURRENT_DATE)))
    else  {{ end_month}}
    end as  {{ end_month}}

{% endmacro %}
