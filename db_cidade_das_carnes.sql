-- MySQL Script generated by MySQL Workbench
-- Tue Feb 16 17:54:00 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cidade_das_carnes` DEFAULT CHARACTER SET utf8 ;
USE `db_cidade_das_carnes` ;

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_categoria` (
  `idtb_produto` INT NOT NULL AUTO_INCREMENT,
  `qualidade` VARCHAR(45) NOT NULL,
  `selo_organic` VARCHAR(45) NOT NULL,
  `sub_categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtb_produto`),
  UNIQUE INDEX `idtb_produto_UNIQUE` (`idtb_produto` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_produto` (
  `idtb_categoria.` INT NOT NULL AUTO_INCREMENT,
  `corte` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `valor_carne` DOUBLE NOT NULL,
  `origem` VARCHAR(45) NOT NULL,
  `temperada` VARCHAR(45) NULL,
  `tb_categoria_idtb_produto` INT NOT NULL,
  PRIMARY KEY (`idtb_categoria.`, `tb_categoria_idtb_produto`),
  UNIQUE INDEX `idtb_categoria._UNIQUE` (`idtb_categoria.` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`tb_categoria_idtb_produto` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`tb_categoria_idtb_produto`)
    REFERENCES `db_cidade_das_carnes`.`tb_categoria` (`idtb_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
