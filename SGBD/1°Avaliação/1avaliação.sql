-/*  1° AVALIAÇÃO DA MATERIA SGBD COM O PROFESSOR DIOGO BORTOLINI
1 Questão - Script do 1° Exercicio gerado  no Workbench apartir do modelo criado manualmente das tabelas com inserção dos tipos de dados.*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema obrasdearte
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema obrasdearte
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `obrasdearte` DEFAULT CHARACTER SET utf8 ;
USE `obrasdearte` ;

-- -----------------------------------------------------
-- Table `obrasdearte`.`artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obrasdearte`.`artista` (
  `idArtista` INT(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `datanascimento` DATE NOT NULL,
  `dataobito` DATE NOT NULL,
  PRIMARY KEY (`idArtista`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `obrasdearte`.`colecao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obrasdearte`.`colecao` (
  `idColecao` INT(11) NOT NULL,
  `instituicao` VARCHAR(45) NULL DEFAULT NULL,
  `nome_responsavel` VARCHAR(45) NOT NULL,
  `telefone` BIGINT(20) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColecao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `obrasdearte`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obrasdearte`.`tipo` (
  `idTipo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `obrasdearte`.`objeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obrasdearte`.`objeto` (
  `idObjeto` INT(11) NOT NULL,
  `idArtista` INT(11) NOT NULL,
  `idTipo` INT(11) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `anocriacao` INT(11) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idObjeto`),
  INDEX `fk_Objeto_Artista_idx` (`idArtista` ASC) ,
  INDEX `fk_Objeto_Tipo1_idx` (`idTipo` ASC) ,
  CONSTRAINT `fk_Objeto_Artista`
    FOREIGN KEY (`idArtista`)
    REFERENCES `obrasdearte`.`artista` (`idArtista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Objeto_Tipo1`
    FOREIGN KEY (`idTipo`)
    REFERENCES `obrasdearte`.`tipo` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

/* Da linha 18 até a linha 84 foi criado o banco de dados sql com as tabelas e tipo de dados apartir desse script gerado no modelo de relacionamento do Workbench.

Agora começa a insercão dos dados dentro do banco de dados "obrasdearte" como pedido no exercicio 1° da avaliação
*/

use obrasdearte;
 /* Inserindo dados na tabela artista */
insert into obrasdearte.artista(idartista,nome,nacionalidade,datanascimento,dataobito)
 
 /* Dados a serem enseridos nas linhas 102,103 e 104 */
 values(1,"Fulano da Silva","francês","1939-11-01","2000-10-05"),
 (2,"Joseph Climber","Italiano","1922-11-01","1999-11-12"),
(3,"Allan Lee","Brasileiro","1937-01-01","2005-01-30");

/* Dados inseridos no banco de dados sendo mostrados na linha 107 atravez do comando select from * */
select * from artista;

/* Inserindo dados na tabela tipo */
insert into obrasdearte.tipo(idtipo,descricao)

/* Dados a serem enseridos na linha 117,118 e 119 */
values
(1,"pintura"),
(2,"escultura"),
(3,"arquitetura");

/* Dados inseridos no banco de dados sendo mostrados na linha 123 atravez do comando select from *  */
select *from tipo;

/* Inserindo dados na tabela objeto */
insert into obrasdearte.objeto(idobjeto,idartista,idtipo,titulo,anocriacao,descricao)

/* Dados a serem enseridos na linha 134,135 e 136 */
values
(1,3,1,"Mona Crespa",1949,"pintura e óleo"),
(2,1,1,"a sala",null,"pintura ilusionista"),
(3,2,2,"Golias",2000,"Escultura em bronze");

/* Dados inseridos no banco de dados sendo mostrados na linha 139 atravez do comando select from * */
select * from objeto;

/* Inserindo dados na tabela colecao */
insert into obrasdearte.colecao(idcolecao,instituicao,nome_responsavel,telefone,endereco)

/* Dados a serem enseridos na linha 150,151 e 152 */
values
(1,"Museu do Lustre","Jardine Mai",4152256554,"Rua dos Museus,5"),
(2,"Museu Joseph Climber","Robert Delirio",1561525522,"Rua da casa do Zé"),
(3,"Casa do Zé","zé",1524255555,"Rua da casa do Zé");

/* Dados inseridos no banco de dados sendo mostrados na linha 155 atravez do comando select from * */
select *from colecao;

/*Finalizei o exercicio 1° na linha 155 */

/*Iniciando o exercicio número 2 da avaliação na linha 166 */

/* Criando o banco de dados empresaAvaliacao e suas tabelas com seus tipos de dados atravez do script disponibilizado no enunciado da questão 2.*/

CREATE SCHEMA IF NOT EXISTS `empresaAvaliacao` DEFAULT CHARACTER SET utf8 ;
USE `empresaAvaliacao` ;
-- -----------------------------------------------------
-- Table `empresaAvaliacao`.`projetos`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `empresaAvaliacao`.`projetos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `prazo_projeto_dias` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

/* Inserindo dados na tabela projetos*/
insert into empresaAvaliacao.projetos(nome,descricao,prazo_projeto_dias)

/* Dados a serem enseridos na linha 185 até a linha 189 */
values
("João","fazer Casa",45),
("Maria","Fazer desenho",12),
("Pedro","Fazer bolo",1),
("Nani","Fazer comida",1),
("regi","Fazer arroz",1);

/* Dados inseridos no banco de dados sendo mostrados na linha 192 atravez do comando select from */
select* from projetos;

/* Atualizando dado na tabela projetos que já existe e alterando uma informação especifica de um dado atravez do comando update */
update projetos
set prazo_projeto_dias = "4"
where id = "4";

/* Dados atualizados e alterado no banco de dados sendo mostrados na linha 201 atravez do comando select from * */
select* from projetos;

/* Deletando dado salvo no campo prazo_projeto_dias onde tem o numero "45" na tabela projetos atravez do comando delete from */
SET SQL_SAFE_UPDATES = 0;
delete from projetos
where prazo_projeto_dias = "45";

/* Dado deletado do campo prazo_projeto_dias onde tinha o numero "45" sendo mostrado na linha 211 atravez do comando select from * */
select* from projetos;

/* Fim da 1° Avaliação da disciplina de SGBD.


