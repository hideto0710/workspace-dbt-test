{% macro is_format_uuid(model, column_name) %}

with validation as (
    select {{ column_name }} as text_field
    from {{ model }}
),

validation_errors as (
    select *
    from validation
    where
        text_field !~* '^[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}$'
)

select *
from validation_errors

{% endmacro %}
