-- Exemplo 1: SELECT *
select * from clientes;
select * from pedidos;

-- Exemplo 2: SELECT FROM
select Nome, Sobrenome, Email from clientes;

-- Exemplo 3: SELECT AS
select Data_Venda as 'Data de Venda', ID_Produto as 'ID do Produto', Qtd_Vendida 'Quantidade Vendida' from pedidos;

-- Exemplo 4: SELECT LIMIT
select * from pedidos limit 100;