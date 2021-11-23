-- MySQL Script generated by MySQL Workbench
-- Mon Nov 22 10:12:19 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema qtgostoso
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema qtgostoso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `qtgostoso` DEFAULT CHARACTER SET utf8 ;
USE `qtgostoso` ;

-- -----------------------------------------------------
-- Table `qtgostoso`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`usuario` (
  `idusuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NULL,
  `senha` VARCHAR(100) NOT NULL,
  `genero` TINYINT UNSIGNED NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  `salt` VARCHAR(590) NOT NULL,
  `inscrito` DATETIME NOT NULL DEFAULT current_timestamp(),
  `uuid` VARCHAR(45) NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE INDEX `idusuario_UNIQUE` (`idusuario` ) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`refeicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`refeicao` (
  `idrefeicao` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `refeicao` VARCHAR(45) NOT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrefeicao`),
  UNIQUE INDEX `idrefeicao_UNIQUE` (`idrefeicao` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`cozinha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`cozinha` (
  `idcozinha` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcozinha`),
  UNIQUE INDEX `idcozinha_UNIQUE` (`idcozinha` ) ,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`dificuldade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`dificuldade` (
  `iddificuldade` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `dificuldade` VARCHAR(45) NOT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`iddificuldade`),
  UNIQUE INDEX `iddificuldade_UNIQUE` (`iddificuldade` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`receita` (
  `idreceita` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `descricao` MEDIUMTEXT NULL,
  `idcozinha` INT UNSIGNED NULL,
  `iddificuldade` INT UNSIGNED NOT NULL,
  `foto` LONGBLOB NULL,
  `idusuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idreceita`),
  UNIQUE INDEX `idreceitas_UNIQUE` (`idreceita` ) ,
  INDEX `fk_receitas_cozinha1_idx` (`idcozinha` ) ,
  INDEX `fk_receita_dificuldade1_idx` (`iddificuldade` ) ,
  INDEX `fk_receita_usuario1_idx` (`idusuario` ) ,
  CONSTRAINT `fk_receitas_cozinha1`
    FOREIGN KEY (`idcozinha`)
    REFERENCES `qtgostoso`.`cozinha` (`idcozinha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receita_dificuldade1`
    FOREIGN KEY (`iddificuldade`)
    REFERENCES `qtgostoso`.`dificuldade` (`iddificuldade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receita_usuario1`
    FOREIGN KEY (`idusuario`)
    REFERENCES `qtgostoso`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`refeicao_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`refeicao_receita` (
  `idrefeicao` INT UNSIGNED NOT NULL,
  `idreceita` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idrefeicao`, `idreceita`),
  INDEX `fk_refeicao_has_receitas_receitas1_idx` (`idreceita` ) ,
  INDEX `fk_refeicao_has_receitas_refeicao_idx` (`idrefeicao` ) ,
  CONSTRAINT `fk_refeicao_receitas_refeicao`
    FOREIGN KEY (`idrefeicao`)
    REFERENCES `qtgostoso`.`refeicao` (`idrefeicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_refeicao_receitas_receitas1`
    FOREIGN KEY (`idreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`categoria_has_receita_has_categoria_has_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`categoria_has_receita_has_categoria_has_receita` (
  `categoria_has_receita_categoria_idcategoria` INT UNSIGNED NOT NULL,
  `categoria_has_receita_receita_idreceitas` INT UNSIGNED NOT NULL,
  `categoria_has_receita_categoria_idcategoria1` INT UNSIGNED NOT NULL,
  `categoria_has_receita_receita_idreceitas1` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`categoria_has_receita_categoria_idcategoria`, `categoria_has_receita_receita_idreceitas`, `categoria_has_receita_categoria_idcategoria1`, `categoria_has_receita_receita_idreceitas1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`categoria` (
  `idcategoria` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcategoria`),
  UNIQUE INDEX `idrefeicao_UNIQUE` (`idcategoria` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`categoria_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`categoria_receita` (
  `idcategoria` INT UNSIGNED NOT NULL,
  `iidreceita` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idcategoria`, `iidreceita`),
  INDEX `fk_categoria_has_receita_receita1_idx` (`iidreceita` ) ,
  INDEX `fk_categoria_has_receita_categoria1_idx` (`idcategoria` ) ,
  CONSTRAINT `fk_categoria_has_receita_categoria1`
    FOREIGN KEY (`idcategoria`)
    REFERENCES `qtgostoso`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_has_receita_receita1`
    FOREIGN KEY (`iidreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`menu` (
  `idmenu` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu` VARCHAR(45) NOT NULL,
  `descricao` MEDIUMTEXT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idmenu`),
  UNIQUE INDEX `idmenu_UNIQUE` (`idmenu` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`menu_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`menu_receita` (
  `idmenu_receita` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idmenu` INT UNSIGNED NOT NULL,
  `idreceita` INT UNSIGNED NOT NULL,
  `descricao` TINYTEXT NULL,
  PRIMARY KEY (`idmenu_receita`),
  UNIQUE INDEX `idmenu_receita_UNIQUE` (`idmenu_receita` ) ,
  INDEX `fk_menu_receita_menu1_idx` (`idmenu` ) ,
  INDEX `fk_menu_receita_receita1_idx` (`idreceita` ) ,
  CONSTRAINT `fk_menu_receita_menu1`
    FOREIGN KEY (`idmenu`)
    REFERENCES `qtgostoso`.`menu` (`idmenu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_menu_receita_receita1`
    FOREIGN KEY (`idreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`preparo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`preparo` (
  `idpreparo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `instrucao` MEDIUMTEXT NOT NULL,
  `idreceita` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idpreparo`),
  INDEX `fk_preparo_receita1_idx` (`idreceita` ) ,
  UNIQUE INDEX `idpreparo_UNIQUE` (`idpreparo` ) ,
  CONSTRAINT `fk_preparo_receita1`
    FOREIGN KEY (`idreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`ingrediente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`ingrediente` (
  `idingrediente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idingrediente`),
  UNIQUE INDEX `idingrediente_UNIQUE` (`idingrediente` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`medida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`medida` (
  `idmedida` INT NULL AUTO_INCREMENT,
  `medida` VARCHAR(45) NULL,
  `abreviacao` VARCHAR(20) NULL,
  `ativo` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idmedida`),
  UNIQUE INDEX `idmedida_UNIQUE` (`idmedida` ) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`usuario_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`usuario_receita` (
  `idusuario` INT UNSIGNED NOT NULL,
  `idreceita` INT UNSIGNED NOT NULL,
  `comentario` VARCHAR(200) NULL,
  `nota` TINYINT NOT NULL,
  PRIMARY KEY (`idusuario`, `idreceita`),
  INDEX `fk_usuario_has_receita_receita1_idx` (`idreceita` ) ,
  INDEX `fk_usuario_has_receita_usuario1_idx` (`idusuario` ) ,
  CONSTRAINT `fk_usuario_has_receita_usuario1`
    FOREIGN KEY (`idusuario`)
    REFERENCES `qtgostoso`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_receita_receita1`
    FOREIGN KEY (`idreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtgostoso`.`ingrediente_receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtgostoso`.`ingrediente_receita` (
  `idingrediente_receita` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idingrediente` INT UNSIGNED NOT NULL,
  `idreceita` INT UNSIGNED NOT NULL,
  `idmedida` INT NULL,
  `quantidade` FLOAT NULL,
  PRIMARY KEY (`idingrediente_receita`),
  INDEX `fk_ingrediente_receita_ingrediente1_idx` (`idingrediente` ) ,
  INDEX `fk_ingrediente_receita_receita1_idx` (`idreceita` ) ,
  INDEX `fk_ingrediente_receita_medida1_idx` (`idmedida` ) ,
  CONSTRAINT `fk_ingrediente_receita_ingrediente1`
    FOREIGN KEY (`idingrediente`)
    REFERENCES `qtgostoso`.`ingrediente` (`idingrediente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingrediente_receita_receita1`
    FOREIGN KEY (`idreceita`)
    REFERENCES `qtgostoso`.`receita` (`idreceita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingrediente_receita_medida1`
    FOREIGN KEY (`idmedida`)
    REFERENCES `qtgostoso`.`medida` (`idmedida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;