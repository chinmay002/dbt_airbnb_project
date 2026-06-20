SELECT
    l.*EXCEPT(created_at,host_id),
    h.* EXCEPT(created_at,host_name),
    {{ lower_text('host_name')}} as host_name

FROM {{ ref('stg_listings') }} l
LEFT JOIN {{ ref('stg_hosts') }} h
    ON l.host_id = h.host_id