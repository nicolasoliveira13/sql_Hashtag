-- WHERE:
-- Exemplo 1: Selecione na tabela de clientes apenas os clientes do sexo feminino
select *
from clientes
where Sexo = 'F';

-- Exemplo 2: Selecione na tabela de produtos apenas os produtos com preço acima de R$ 2.000
select *
from produtos
where Preco_Unit > 2000;

-- Exemplo 3: Selecione os pedidos realizados no dia 10/03/2019
select *
from pedidos
where Data_Venda = '2019-03-10';