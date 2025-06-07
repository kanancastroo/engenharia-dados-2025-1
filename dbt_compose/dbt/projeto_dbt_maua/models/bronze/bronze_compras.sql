{{ config(materialized='view') }}

SELECT * FROM {{ ref('compras_model') }}
