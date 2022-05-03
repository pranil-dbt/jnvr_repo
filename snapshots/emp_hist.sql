{% snapshot emp_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='emp_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('src', 'emp_snap') }}

{% endsnapshot %}