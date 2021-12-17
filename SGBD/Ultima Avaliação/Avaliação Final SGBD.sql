/* Última avaliação da matéria de SGBD com o professor Diogo Bortolini fazendo uso dos Joins/Using/Group by/Having e etc. */

use sakila;

/* 1 - Retorne concatenados o primeiro e o último nome de atores (em um único campo de resultado) que tenham “CAD” no último nome */
/* Nome concatenado de todos os atores */
select CONCAT(primeiro_nome,' ',ultimo_nome) from ator where ator.ultimo_nome like 'CAD%';

/* 2 - Quais são todos os países (nomes) cadastrados no banco de dados Sakila (ordenados de forma ascendente)? */
select pais from pais order by pais asc;

/* 3 - Retorne o endereco, bairro, cep e telefone da tabela endereço dos endereços onde endereco2 é  nulo (ou seja, está em branco, sem texto), 
sendo que o resultado deve ser ordenado de forma descendente pelo Cep. */
select endereco2, bairro, cep , telefone from endereco where endereco2 is null order by cep desc;

/* 4 - Exiba o cliente_id, primeiro_nome, ultimo_nome dos clientes  onde o cliente_id é menor que 150. Usando UNION,
 exiba também as mesmas colunas para os cliente_id maior que 250. */
select cliente_id, primeiro_nome, ultimo_nome from cliente where cliente_id <150
union
select cliente_id, primeiro_nome, ultimo_nome from cliente where cliente_id >250;

/* 5 - Retorne o titulo, descricao e ano_de_lancamento e preco_da_locacao dos filmes, bem com, a categoria e a categoria_id de todos os filmes
 onde titulo do filme termina com “W” e o preco_da_locacao seja maior ou igual a 1.99. Utilize JOIN. */
select filme.titulo,filme.descricao,filme.ano_de_lancamento,filme.preco_da_locacao,categoria.nome,
categoria.categoria_id from filme join filme_categoria on filme.filme_id = filme_categoria.filme_id
join categoria on filme_categoria.categoria_id = categoria.categoria_id
where filme.titulo like '%W' and preco_da_locacao >= 1.99;

/* 6 - Com base no exercício anterior, apresente os mesmos resultados, porém utilize Subconsulta ao invés de JOIN */
select filme.titulo,filme.descricao,filme.ano_de_lancamento,filme.preco_da_locacao, categoria.nome,
categoria.categoria_id  from filme,filme_ator , categoria where filme_id = (select filme.titulo,filme.descricao,filme.ano_de_lancamento,filme.preco_da_locacao from filme
where filme.titulo = "SONS INTERVIEW");

/* 7 - Pesquise o que é uma TRIGGER e dê um exemplo.. */
/* Uma Trigger é um procedimento armazenado no banco de dados que é chamado automaticamente sempre que ocorre um evento especial no banco de dados. 
Por exemplo, um acionador pode ser chamado quando uma linha é inserida em uma tabela especificada ou quando determinadas colunas da tabela estão sendo atualizadas.
Geralmente essas ações que acionam os triggers são alterações nas tabelas por meio de operações de inserção, exclusão e atualização de dados (insert, delete e update). */
 
DELIMITER $
CREATE TRIGGER tgr_Cliente BEFORE INSERT ON cliente
 FOR EACH ROW BEGIN
  INSERT INTO cliente SET nome = NEW.primeiro_nome;
 END$
DELIMITER ;
SHOW TRIGGERS;
/*Ao tentarmos inserir um valor cujo número de caracteres é menor ou igual a 0 ou nada, 
o TRIGGER será disparado e setará o valor enviado para NULL através do operador NEW.primeiro_nome. Como no Script de exemplo a coluna primeiro_nome foi configurada com a restrição NOT NULL, ou seja,
 não aceitará valores nulos, uma mensagem de erro será enviada e o INSERT falhará


/* 8 -	Qual a diferença entre LEFT JOIN, RIGHT JOIN e INNER JOIN? Explica a diferença mostrando o resultado dos comandos em uma consulta SELECT usando o banco de dados sakila. */
/* INNER JOIN : retorna linhas quando há uma correspondência em ambas as tabelas. 
LEFT JOIN : retorna todas as linhas da tabela à esquerda, mesmo que não haja correspondências na tabela à direita. 
RIGHT JOIN : retorna todas as linhas da tabela da direita, mesmo que não haja correspondências na tabela da esquerda.
Exemplos*/
select c.cliente_id, c.primeiro_nome, c.ultimo_nome, a.ator_id, a.primeiro_nome, a.ultimo_nome
from cliente c left join ator a on c.ultimo_nome = a.ultimo_nome
order by c.ultimo_nome;

select c.cliente_id, c.primeiro_nome, c.ultimo_nome, a.ator_id, a.primeiro_nome, a.ultimo_nome
from cliente c right join ator a on c.ultimo_nome = a.ultimo_nome
order by c.ultimo_nome;

select c.cliente_id, c.primeiro_nome, c.ultimo_nome, a.ator_id, a.primeiro_nome, a.ultimo_nome
from cliente c inner join ator a on c.ultimo_nome=a.ultimo_nome
order by c.ultimo_nome;

/* 9 - Retorne o titulo do filme e a quantidade de atores de cada um dos filmes, no qual, o filme tenha como classificacao “PG” ou “R” e o  
custo_de_locacao esteja entre 1.99 e 10.99 (inclusive). Utilize JOIN e USING. */
select f.titulo , count(fa.ator_id), f.classificacao , f.preco_da_locacao from filme f join filme_ator fa on 
f.filme_id= fa.filme_id join ator a on fa.ator_id= a.ator_id  where f.classificacao = "R" or f.classificacao ="PG" 
and f.preco_da_locacao between 1.99 and 10.99 group by f.titulo ;
/*Usando o using */
select f.titulo , count(fa.ator_id), f.classificacao , f.preco_da_locacao from filme f join filme_ator fa using
(filme_id) join ator a using(ator_id)  where f.classificacao = "R" or f.classificacao ="PG" 
and f.preco_da_locacao between 1.99 and 10.99 group by f.titulo ;

/* 10 - Com base no exercício anterior, apresente os mesmos resultados, porém apenas 
com traga resultados apenas onde a quantidade de atores seja superior a 8. 
Além disso, a coluna que traz a quantidade de atores exiba como “Qtdade atores”. */
select f.titulo , count(fa.ator_id) as QtdadeAtores, f.classificacao , f.preco_da_locacao from filme f join filme_ator fa on 
f.filme_id= fa.filme_id join ator a on fa.ator_id= a.ator_id  where f.classificacao = "R" or f.classificacao ="PG" 
and  f.preco_da_locacao between 1.99 and 10.99 group by f.titulo having count(fa.ator_id) > 8 ;

/* 11- Crie uma view com a consulta do item anterior.*/

CREATE VIEW vw_TituloseAtoresfilmestotal
AS SELECT f.titulo as titulos , count(fa.ator_id) as QtdadeAtores, f.classificacao as classificacao , f.preco_da_locacao as preco
FROM filme f
INNER JOIN filme_ator fa
ON f.filme_id= fa.filme_id
where f.classificacao = "R" or f.classificacao ="PG" 
and  f.preco_da_locacao between 1.99 and 10.99 group by f.titulo having count(fa.ator_id) > 8 ;

select titulos, QtdadeAtores, classificacao , preco
from vw_TituloseAtoresfilmestotal;

