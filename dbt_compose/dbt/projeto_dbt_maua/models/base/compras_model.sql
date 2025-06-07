{{ config(alias='compras_model', materialized='view') }}
SELECT * FROM {{ source('public', 'compras') }}