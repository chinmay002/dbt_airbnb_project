
{{
    config(
        materialized= "incremental",
        unique_key= "booking_id",
        on_schema_change="fail")

}}


select *,
from {{ ref('int_booking_details') }}

{% if is_incremental() %}
    where created_at > (select max(created_at) from {{ this }})
{% endif %}
