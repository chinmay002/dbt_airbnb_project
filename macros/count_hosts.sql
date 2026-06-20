{% macro count_hosts() %}

    {% set query %}
        select count(*) as cnt
        from {{ ref('stg_hosts') }}
    {% endset %}

    {% set results = run_query(query) %}

    {% do log(
        "Host count = " ~ results.columns[0].values()[0],
        info=True
    ) %}

{% endmacro %}