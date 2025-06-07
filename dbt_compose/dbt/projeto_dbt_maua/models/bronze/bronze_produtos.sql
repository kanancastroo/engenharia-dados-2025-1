{{ config(materialized='view') }}

SELECT * FROM {{ ref('produtos_model') }}
