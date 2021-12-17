CREATE database LOJA;
CREATE SCHEMA IF NOT EXISTS Loja
default character set utf8;
use Loja;
create table if not exists Loja.vendedor(
nro_vend int,
nome_venc varchar(50),
sexo_vend tinyint,
primary key (nro_vend),
unique index nro_vend_unique (nro_vend ASC)

)
engine = innoDB;

create table if not exists Loja.cliente(
nro_cliente int,
nome_cliente varchar(50),
logradouro varchar(75),
numero int,
complemento varchar(50),
CEP int(8),
primary key (nro_cliente),
unique index nro_cliente_unique (nro_cliente ASC)

)
engine = innoDB;


create table if not exists Loja.venda(
nro_venda int not null auto_increment,
vendedor_nro_vend int,
cliente_nro_cliente int,
data_venda date,
primary key (nro_venda),
unique index nro_venda_unique (nro_venda ASC),
constraint fk_vendedor
foreign key(vendedor_nro_vend)
references vendedor(nro_vend),
constraint fk_cliente
foreign key(cliente_nro_cliente)
references cliente ( nro_cliente) 


)
engine = innoDB;







use Loja;
insert into loja.vendedor(nro_vend,nome_venc,sexo_vend)

values ("1","Rafaela Barros Costa",0);

insert into loja.vendedor(nro_vend,nome_venc,sexo_vend)

values ("2","José Castro Barbosa ",1),("3","Leila Ferreira Alves ",null),("4","Danilo Barros Ferreira ",null),("5","Laura Souza Melo ",0);


select * from vendedor;




insert into loja.cliente(nro_cliente,nome_cliente,logradouro,numero,complemento,CEP)
values
("1","Kaua Carvalos Fernandes","Rua F","627","casa","12945771"),("2","Samuel Barbosa Melo",null,null,null,null),
("3","Isabela Barros Ribeiro","Rua Felipe dos Santos","531",null,null),("4","Sofia Silva Alves","Rua C-11","1474",null,"53405560"),
("5","Rebeca Rocha Barbosa ","Rua Manuel Albano","1420","Ap 701","60861460"),("6","Leila Carvalho Ribeiro","Praça Hermínio G. Bordim","178","Quadra 2- casa 7","19807324"),
("7","Tiago Martins Alves","Vila Nova Esperança","1607",null,"40391226");

select * from cliente;

insert into loja.venda(vendedor_nro_vend,cliente_nro_cliente,data_venda)
values
("1","2","2001-05-17"),("4","3","2006-07-18"),("4","6","2010-04-04"),("4","7","2011-06-24"),
("2","2","2012-05-04"),("3","4","2016-07-04"),("5","5","2019-06-24"),("1","4","2019-09-28"),
("1","6","2020-06-28");

select * from venda;





update venda 
set vendedor_nro_vend = "2"
where data_venda = "2010-04-04";

select * from venda;

select * from cliente ;

update cliente
set nome_cliente = "Rebecca Rocha Barbosa"
where nro_cliente = "5";

select * from cliente ;




delete from cliente
where nro_cliente = "7";

select * from cliente ;
/* Usei o comando delete *from fazendo mensão a tabela cliente e excluir o registro do cliente que estava localizado na posição 7 da tabela nro_cliente onde os dados que
estavam lá era 7 Tiago Martins Alves Vila Nova Esperança 1607 NULL 40391226/*



