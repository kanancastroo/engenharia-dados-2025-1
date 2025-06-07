WITH compras AS (
    SELECT * FROM {{ ref('bronze_compras') }}
),
produtos AS (
    SELECT * FROM {{ ref('bronze_produtos') }}
),
gastos AS (
    SELECT 
        c.id_cliente,
        COUNT(*) AS total_compras,
        SUM(p.preco) AS valor_total_gasto
    FROM compras c
    JOIN produtos p ON c.id_produto = p.id_produto
    GROUP BY c.id_cliente
),
mais_comprado AS (
    SELECT 
        id_cliente,
        id_produto,
        COUNT(*) AS vezes
    FROM compras
    GROUP BY id_cliente, id_produto
),
ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY id_cliente ORDER BY vezes DESC) AS rn
    FROM mais_comprado
),
produto_top AS (
    SELECT 
        r.id_cliente,
        p.nome AS produto_mais_comprado
    FROM ranked r
    JOIN produtos p ON r.id_produto = p.id_produto
    WHERE r.rn = 1
)
SELECT 
    g.id_cliente,
    g.total_compras,
    g.valor_total_gasto,
    pt.produto_mais_comprado
FROM gastos g
LEFT JOIN produto_top pt ON g.id_cliente = pt.id_cliente
