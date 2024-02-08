-- Exercício 1:
-- a) Selecione todas as colunas e linhas da tabela de produtos.
SELECT 
    *
FROM
    produtos;

-- b) Agora selecione apenas as colunas Nome_Produto, Marca_Produto e Preco_Unit.
-- Renomeie essas colunas para Nome do Produto, Marca e Preço Unitário.
select
	Nome_Produto as 'Nome do Produto',
    Marca_Produto as 'Marca',
    Preco_Unit as 'Preço Unitário'
from
	produtos;


-- c) Selecione as 5 primeiras linhas da tabela de lojas (considere todas as colunas).
select
	Nome_Produto as 'Nome do Produto',
    Marca_Produto as 'Marca',
    Preco_Unit as 'Preço Unitário'
from
	produtos
limit 5;


-- Exercício 2:
-- a) Faça uma consulta na tabela de lojas e ordene a tabela de acordo com a coluna de Num_Funcionarios, em ordem crescente.
-- Obs: Sua consulta deve retornar as colunas de Loja (AS 'Nome da Loja'), Endereco (AS 'Endereço'), Num_Funcionarios (AS 'Qtd. Funcionários') e Telefone (AS 'Número para contato').
select 
	Loja AS 'Nome da Loja',
    Endereco AS 'Endereço',
    Num_Funcionarios AS 'Qtd. Funcionários', Telefone AS 'Número para contato'
from 
	lojas;

-- b) Faça uma cosulta na tabela de clientes, ordenando a tabela de acordo com o nome (ordem alfabética) e sobrenome (ordem alfabética). Retorne todas as colunas e linhas da tabela.
select
	*
from
	clientes
order by
	Nome, Sobrenome;


-- Exercício 3:
-- a) Faça um filtro na tabela de produtos e retorne apenas os produtos com custo maior ou igual a 200.
select
	*
from
	produtos
where
	Custo_Unit >= 200;

-- b) Faça um filtro na tabela de produtos e retorne apenas os produtos da marca "DELL"
select
	*
from
	produtos
where
	Marca_Produto = 'DELL';


-- Exercício 4:
-- a) Descubra o total de custo da tabela de pedidos.
select
	sum(Custo_Unit) as 'Custo Total'
from
	Produtos;
    
-- b) Descubra a quantidade total de lojas.
select
	count(Loja) as 'Qtd. Lojas'
from lojas;


-- c) Descubra o custo médio dos produtos (de acordo com a tabela de produtos).
select
	avg(Custo_Unit) as 'Custo Médio'
from 
	Produtos;

-- d) Descubra a quantidade mínima e máxima de funcionários das lojas (faça isso em um único SELECT). 
select
	min(Num_Funcionarios) as 'Número mínimo de funcionários',
    max(Num_Funcionarios) as 'Número máximo de funcionários'
from
	lojas;


-- Exercício 5:
-- a) Faça um agrupamento para descobrir o total de clientes por Sexo.
select
	Sexo, count(Sexo) as 'Quantidade'
from
	clientes
group by
	Sexo;
    
-- b) Faça um agrupamento para descobrir quantos produtos existem por categoria.
select
	Categoria,
    count(Nome_Produto) as 'Qtd. Produto'
from
	produtos
inner join 
	categorias
on 
	produtos.ID_Categoria = categorias.ID_Categoria
group by
	Categoria;
    

-- c) Faça um agrupamento para descobrir a soma total de receita por Loja.
select
	Loja, sum(Receita_Venda) as 'Receita Total'
from
	pedidos
inner join
	lojas
on
	pedidos.ID_Loja = lojas.ID_Loja
group by
	Loja;