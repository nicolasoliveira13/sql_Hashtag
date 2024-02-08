-- ORDER BY:
-- Exemplo 1: Faça uma consulta na tabela clientes e faça uma ordenação de acordo com o nome do cliente, em ordem alfabética
select * from clientes
order by Nome asc;

-- Exemplo 2: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com a renda anual, da maior para a menor
select * from clientes
order by Renda_Anual desc;

-- Exemplo 3: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com a data de nascimento, ordem do mais novo para o mais velho
select * from clientes
order by Data_Nascimento desc;