-- MySQL Script generated by MySQL Workbench
-- Tue Feb 16 13:07:02 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_farmacia_do_bem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_farmacia_do_bem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_farmacia_do_bem` DEFAULT CHARACTER SET utf8 ;
USE `db_farmacia_do_bem` ;

-- -----------------------------------------------------
-- Table `db_farmacia_do_bem`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmacia_do_bem`.`tb_categoria` (
  `idtb_categoria` INT NOT NULL AUTO_INCREMENT,
  `Departamento` VARCHAR(45) NOT NULL,
  `Qualidade` VARCHAR(45) NOT NULL,
  `Selo_verde` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtb_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_farmacia_do_bem`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmacia_do_bem`.`tb_produto` (
  `idtb_produto` INT NOT NULL AUTO_INCREMENT,
  `Marca` VARCHAR(45) NULL,
  `Descricao` VARCHAR(45) NULL,
  `Preco` DOUBLE NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `validade` DATE NOT NULL,
  `tb_categoria_idtb_categoria` INT NOT NULL,
  PRIMARY KEY (`idtb_produto`, `tb_categoria_idtb_categoria`),
  UNIQUE INDEX `idtb_produto_UNIQUE` (`idtb_produto` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`tb_categoria_idtb_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`tb_categoria_idtb_categoria`)
    REFERENCES `db_farmacia_do_bem`.`tb_categoria` (`idtb_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
