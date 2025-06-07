{{ config(alias='clientes_model', materialized='view') }}
SELECT * FROM {{ source('public', 'clientes') }}