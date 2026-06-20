{% snapshot host_snapshot %}
{{  
  config(
    unique_key='host_id',
    strategy='check',
    check_cols=['response_rate','is_superhost']
  )
}}

select * from {{ref('stg_hosts')}}

{% endsnapshot %}