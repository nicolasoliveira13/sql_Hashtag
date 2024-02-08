-- INNER JOIN
-- Exemplo 1: Faça uma consulta à tabela de pedidos que retorne as colunas de Loja, Data_Venda e Receita_Venda
select Data_Venda, Loja, Receita_Venda
from pedidos
inner join lojas
on pedidos.ID_Loja = lojas.ID_Loja;

-- Exemplo 2: Crie um agrupamento que mostre o total de receita (tabela pedidos) por loja
select Loja, sum(Receita_Venda) as 'Receita Total'
from pedidos
inner join lojas
on pedidos.ID_Loja = lojas.ID_Loja
group by Loja;