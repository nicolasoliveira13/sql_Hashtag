-- Exemplo 1: Crie um agrupamento que mostre a quantidade de produtos por marca
SELECT 
    Marca_Produto, COUNT(Marca_Produto) AS 'Qtd. Produtos'
FROM
    produtos
GROUP BY 
	Marca_Produto;

-- Exemplo 2: Crie um agrupamento que mostre a quantidade de clientes por escolaridade
SELECT 
    Escolaridade, COUNT(Escolaridade) AS 'Qtd. Escolaridade'
FROM
    clientes
GROUP BY 
	Escolaridade;

-- Exemplo 3: Crie um agrupamento que mostre o total de receita (tabela pedidos) por id da loja
SELECT 
    ID_Loja, SUM(Receita_Venda) AS 'Receita Total'
FROM
    Pedidos
GROUP BY 
	ID_Loja;