{{ config(materialized='view') }}

SELECT * FROM {{ ref('clientes_model') }}
