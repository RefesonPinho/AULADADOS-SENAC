-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ex1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ex1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ex1` DEFAULT CHARACTER SET utf8 ;
USE `Ex1` ;

-- -----------------------------------------------------
-- Table `Ex1`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex1`.`marca` (
  `IdMarca` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Marca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdMarca`))
ENGINE = InnoDB;
INSERT INTO marca (Marca) VALUES ('VOLKSWAGEN'), ('FORD'), ('CHEVROLET'), ('FIAT');
SELECT * FROM marca;

-- -----------------------------------------------------
-- Table `Ex1`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex1`.`modelo` (
  `IdModelo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Modelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdModelo`))
ENGINE = InnoDB;
INSERT INTO modelo (Modelo) VALUES ('UP'), ('KA'), ('ECOSPORT'), ('CRUZE'), ('ARGO'), ('ONIX');
SELECT * FROM modelo;

-- -----------------------------------------------------
-- Table `Ex1`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ex1`.`carro` (
  `IdCarro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdMarca` INT UNSIGNED NOT NULL,
  `IdModelo` INT UNSIGNED NOT NULL,
  `Placa` VARCHAR(8) NOT NULL,
  `AnoFab` INT(4) NOT NULL,
  `AnoModel` INT(4) NOT NULL,
  PRIMARY KEY (`IdCarro`),
  INDEX `fk_carro_marca_idx` (`IdMarca` ASC) ,
  INDEX `fk_carro_modelo1_idx` (`IdModelo` ASC) ,
  CONSTRAINT `fk_carro_marca`
    FOREIGN KEY (`IdMarca`)
    REFERENCES `Ex1`.`marca` (`IdMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_carro_modelo1`
    FOREIGN KEY (`IdModelo`)
    REFERENCES `Ex1`.`modelo` (`IdModelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO carro VALUES (1,1,1,'MMG4567',2018,2019), (2,2,2,'IGH5236',2010,2010), (3,2,3,'TGF2555',2015,2016), (4,3,4,'JKT8574',2019,2020), (5,4,5,'GTY5847',2018,2019), (6,3,6,'JKTE1341',2018,2018);
SELECT * FROM carro;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
