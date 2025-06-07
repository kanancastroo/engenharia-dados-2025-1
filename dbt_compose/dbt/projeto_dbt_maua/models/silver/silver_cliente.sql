SELECT 
    id_cliente,
    nome,
    email,
    CAST(data_cadastro AS DATE) AS data_cadastro
FROM {{ ref('bronze_cliente') }}
