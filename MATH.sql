-- sum, count, avg, min e max:

-- sum
select * from pedidos;
select sum(Receita_Venda)  as 'Receita Total' from pedidos;

-- count
select count(Nome) as 'Qtd Clientes' from clientes
where Sexo = 'M';

-- avg
select avg(Renda_Anual) as 'Média Salarial' from Clientes;

-- min
select min(Preco_Unit) as 'Menor Preço'from Produtos;

-- max
select max(Preco_Unit) as 'Menor Preço'from Produtos;