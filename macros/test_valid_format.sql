{% test valid_format(model, column_name, value) %}

{%- if value is none -%}
{{ exceptions.raise_compiler_error("You have to provide a format.") }}
{%- endif -%}

{% if value == "uuid" %}
    {{ is_format_uuid(model, column_name) }}
{% else %}
    {{ exceptions.raise_compiler_error("Unsupported `format`. Got: " ~ value) }}
{% endif %}

{% endtest %}
