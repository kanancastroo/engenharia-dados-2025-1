{{ config(alias='produtos_model', materialized='view') }}
SELECT * FROM {{ source('public', 'produtos') }}