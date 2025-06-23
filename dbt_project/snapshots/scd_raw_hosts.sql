{% snapshot scd_raw_hosts %}

{# This pulls the current version of the `raw_listings` table from the source. dbt will:
- Check if any records have changed since the last snapshot
- If yes, store a new version with `dbt_valid_from` and `dbt_valid_to` timestamps #}

{{
   config(
       target_schema='dev',
       unique_key='id',

       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}
SELECT * FROM {{ source('airbnb', 'hosts') }}

{% endsnapshot %}