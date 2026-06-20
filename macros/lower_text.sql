{% macro lower_text(col_name)%}

    lower(trim({{col_name}}))

{% endmacro %}