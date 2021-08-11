{% macro is_format_number_percentage(model, column_name) %}

with validation as (
    select {{ column_name }} as text_field
    from {{ model }}
),

validation_errors as (
    select *
    from validation
    where
        text_field !~* '^\-?\d+([\.,]\d+)? ?%$'
)

select *
from validation_errors

{% endmacro %}
