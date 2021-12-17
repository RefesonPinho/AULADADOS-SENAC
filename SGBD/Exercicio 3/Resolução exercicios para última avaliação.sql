/* Exercicios de consulta para a última avaliação da matéria de SGBD com o professor Diogo Bortolini fazendo uso dos Joins/Using/Group by/Having e etc. */

/* 1- Lista de todos os filmes */
use sakila;
select *from filme;

/* 2- Lista do título de todos os filmes  */
select titulo from filme;

/* 3- Lista de filmes com duração menor do que 60 minutos  */
select *from filme where duracao_do_filme <60;

/* 4- Lista dos clientes inativos   */
select *from cliente where ativo =0;

/* 5- Lista dos clientes ativos e respectivos endereços  */
select cliente_id,primeiro_nome,ultimo_nome , endereco from cliente
left join endereco using(endereco_id) where ativo=1;

/* 6- Lista dos nomes dos clientes residentes no Brasil.  */
select concat(cliente.primeiro_nome, "",cliente.ultimo_nome) as nome, endereco.endereco, endereco.cidade_id, cidade.cidade, pais.pais
from cliente join endereco using(endereco_id) join cidade on endereco.cidade_id=cidade.cidade_id join pais on pais.pais_id=cidade.pais_id
where pais="Brazil";

/* 7- Relação de filmes e atores que atuaram no mesmo.  */
SELECT filme.titulo , ator.primeiro_nome, ator.ultimo_nome
FROM filme, filme_ator , ator
WHERE filme.filme_id = filme_ator.filme_id AND ator.ator_id = filme_ator.ator_id;

/* 8- Relação de filmes e atores que atuaram no mesmo ordenada por filme .  */
SELECT filme.titulo , ator.primeiro_nome, ator.ultimo_nome
FROM filme, filme_ator , ator
WHERE filme.filme_id = filme_ator.filme_id AND ator.ator_id = filme_ator.ator_id
order by filme.titulo;

/* 9- Relação de filmes e atores que atuaram no mesmo ordenada por ator .  */
SELECT filme.titulo , ator.primeiro_nome, ator.ultimo_nome
FROM filme, filme_ator , ator
WHERE filme.filme_id = filme_ator.filme_id AND ator.ator_id = filme_ator.ator_id
order by ator.primeiro_nome;

/* 10-Relação de filmes com participação de um ator específico. .  */
SET @ator := "scarlett";
SELECT filme.titulo , ator.primeiro_nome, ator.ultimo_nome
FROM filme, filme_ator , ator
WHERE filme.filme_id = filme_ator.filme_id AND ator.ator_id = filme_ator.ator_id
AND ator.primeiro_nome = @ator;

/* 11- Quantidade total de filmes.  */
SELECT Count(*) from filme;

/* 12-Duração média dos filmes.  */
SELECT MIN(duracao_do_filme) from filme;

/* 13. Lista de filmes por categoria.  */
SELECT filme.titulo,categoria.nome from filme join filme_categoria ON 
filme.filme_id= filme_categoria.filme_id join categoria on categoria.categoria_id= filme_categoria.categoria_id;


/* 14. Quantidade de filmes por categoria..  */
select cat.nome, count(f.titulo) from categoria cat  
LEFT JOIN filme_categoria fc on fc.categoria_id = cat.categoria_id  
JOIN filme f ON fc.filme_id = f.filme_id GROUP BY cat.nome; 

/* 15. Duração média dos filmes por categoria.  */
select cat.nome, Min(duracao_do_filme) from categoria cat  
LEFT JOIN filme_categoria fc on fc.categoria_id = cat.categoria_id  
JOIN filme f ON fc.filme_id = f.filme_id GROUP BY cat.nome; 

/* 16. Quantidade de filmes por categoria das categorias com menos de 57 filmes.  */
select cat.nome, count(f.titulo) from categoria cat  
LEFT JOIN filme_categoria fc on fc.categoria_id = cat.categoria_id  
JOIN filme f ON fc.filme_id = f.filme_id GROUP BY cat.nome having
count(cat.nome) <57;

/* 17. Quantidade de filmes por categoria das categorias com menos de 57 filmes.  */
select cat.nome, Min(f.duracao_do_filme) from categoria cat  
LEFT JOIN filme_categoria fc on fc.categoria_id = cat.categoria_id  
JOIN filme f ON fc.filme_id = f.filme_id GROUP BY cat.nome having
count(cat.nome) <57;

/* 18. Quantidade de filmes alugados por cliente.  */
select cliente.primeiro_nome, cliente.ultimo_nome, count(*) from cliente join aluguel
on cliente.cliente_id= aluguel.cliente_id group by cliente.cliente_id;

/* 19. Quantidade de filmes alugados por cliente em ordem decrescente de quantidade de filmes alugados.  */
select cliente.primeiro_nome, cliente.ultimo_nome, count(*) from cliente join aluguel
on cliente.cliente_id= aluguel.cliente_id group by cliente.cliente_id order by count(*) desc;

/* 20. Relação de nomes dos clientes que possuem um filme alugado no momento.  */
select cliente.primeiro_nome, cliente.ultimo_nome from cliente left join aluguel
on cliente.cliente_id= aluguel.cliente_id where aluguel.data_de_devolucao is not null;

/* 21. Relação de nomes dos clientes que não possuem um filme alugado no momento.  */
select cliente.primeiro_nome, cliente.ultimo_nome from cliente right join aluguel
on cliente.cliente_id= aluguel.cliente_id where aluguel.data_de_devolucao is not null;

/* 22. Listar todas as categorias, e a quantidade de filmes de cada categoria, exibindo apenas as categorias com menos de 40 filmes.  */
select categoria.nome, count(*)filme from categoria join filme_categoria on 
categoria.categoria_id= filme_categoria.categoria_id join filme on 
filme.filme_id= filme_categoria.filme_id where categoria.nome having count(categoria.nome) <40;




















