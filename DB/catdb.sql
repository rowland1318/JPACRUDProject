-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema catdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `catdb` ;

-- -----------------------------------------------------
-- Schema catdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `catdb` DEFAULT CHARACTER SET utf8 ;
USE `catdb` ;

-- -----------------------------------------------------
-- Table `cat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cat` ;

CREATE TABLE IF NOT EXISTS `cat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NULL,
  `breed` VARCHAR(45) NULL,
  `age` INT NULL,
  `gender` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS catuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'catuser'@'localhost' IDENTIFIED BY 'catuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'catuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cat`
-- -----------------------------------------------------
START TRANSACTION;
USE `catdb`;
INSERT INTO `cat` (`id`, `name`, `color`, `breed`, `age`, `gender`) VALUES (1, 'Sylvester', 'Black', 'Tuxedo', 4, 'M');

COMMIT;
