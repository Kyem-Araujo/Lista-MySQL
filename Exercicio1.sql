-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 21:34:07 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_generation_game_online
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_generation_game_online
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_generation_game_online` DEFAULT CHARACTER SET utf8 ;
USE `db_generation_game_online` ;

-- -----------------------------------------------------
-- Table `db_generation_game_online`.`tb_classe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_generation_game_online`.`tb_classe` (
  `idtb_classe` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `origem` VARCHAR(45) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtb_classe`),
  UNIQUE INDEX `idtb_classe_UNIQUE` (`idtb_classe` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_generation_game_online`.`tb_personagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_generation_game_online`.`tb_personagem` (
  `idtb_personagem` INT NOT NULL AUTO_INCREMENT,
  `ponto_ataque` INT NOT NULL,
  `ponto_defesa` INT NOT NULL,
  `ponto_magia` INT NOT NULL,
  `ponto_labia` INT NOT NULL,
  `tb_classe_idtb_classe` INT NOT NULL,
  PRIMARY KEY (`idtb_personagem`, `tb_classe_idtb_classe`),
  UNIQUE INDEX `idtb_personagem_UNIQUE` (`idtb_personagem` ASC) VISIBLE,
  INDEX `fk_tb_personagem_tb_classe_idx` (`tb_classe_idtb_classe` ASC) VISIBLE,
  CONSTRAINT `fk_tb_personagem_tb_classe`
    FOREIGN KEY (`tb_classe_idtb_classe`)
    REFERENCES `db_generation_game_online`.`tb_classe` (`idtb_classe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
