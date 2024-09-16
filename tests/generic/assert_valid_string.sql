{% test assert_valid_string(model, column_name, string) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} ILIKE '%{{ string }}%' 

{% endtest %}
