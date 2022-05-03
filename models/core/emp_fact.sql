{{
    config(
        materialized='incremental',
        unique_key='emp_id'
    )
}}

select * from {{ ref('employee_tran1') }}