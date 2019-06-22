-- MySQL Script generated by MySQL Workbench
-- Sat Jun 22 12:05:45 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ISY-CF
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ISY-CF` ;

-- -----------------------------------------------------
-- Schema ISY-CF
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ISY-CF` DEFAULT CHARACTER SET utf8 ;
USE `ISY-CF` ;

-- -----------------------------------------------------
-- Table `ISY-CF`.`Vehicle_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Vehicle_Type` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Vehicle_Type` (
  `Vehicle_Type_ID` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`Vehicle_Type_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Fuel_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Fuel_Type` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Fuel_Type` (
  `Fuel_Type_ID` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Fuel_Type_ID`, `Description`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Vehicle` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Vehicle` (
  `Vehicle_ID` INT NOT NULL AUTO_INCREMENT,
  `Registration` VARCHAR(12) NULL,
  `Description` VARCHAR(120) NOT NULL,
  `Vehicle_Type_ID` INT NOT NULL,
  `Decommissioned` TINYINT(1) NOT NULL DEFAULT 0,
  `Fuel_Type_ID` INT NOT NULL,
  PRIMARY KEY (`Vehicle_ID`),
  CONSTRAINT `fk_Vehicle_Vehicle_Type`
    FOREIGN KEY (`Vehicle_Type_ID`)
    REFERENCES `ISY-CF`.`Vehicle_Type` (`Vehicle_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vehicle_Fuel_Type1`
    FOREIGN KEY (`Fuel_Type_ID`)
    REFERENCES `ISY-CF`.`Fuel_Type` (`Fuel_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Vehicle_Vehicle_Type_idx` ON `ISY-CF`.`Vehicle` (`Vehicle_Type_ID` ASC);

CREATE INDEX `fk_Vehicle_Fuel_Type1_idx` ON `ISY-CF`.`Vehicle` (`Fuel_Type_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Fuel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Fuel` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Fuel` (
  `Fuel_ID` INT NOT NULL AUTO_INCREMENT,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  `Vehicle_ID` INT NOT NULL,
  PRIMARY KEY (`Fuel_ID`),
  CONSTRAINT `fk_Fuel_Vehicle1`
    FOREIGN KEY (`Vehicle_ID`)
    REFERENCES `ISY-CF`.`Vehicle` (`Vehicle_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Fuel_Vehicle1_idx` ON `ISY-CF`.`Fuel` (`Vehicle_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Trip_Group`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Trip_Group` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Trip_Group` (
  `Trip_Group_ID` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(80) NOT NULL,
  `Teacher_Only` TINYINT(1) NULL,
  PRIMARY KEY (`Trip_Group_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Trip`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Trip` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Trip` (
  `Trip_ID` INT NOT NULL AUTO_INCREMENT,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Description` VARCHAR(120) NOT NULL,
  `Trip_Group_ID` INT NOT NULL,
  `Number_of_Buses` INT NULL,
  `Bus_Distance` INT NULL,
  `Flight_Distance` INT NULL,
  `Number_of_Students` INT NULL,
  `Number_of_Teachers` INT NULL,
  PRIMARY KEY (`Trip_ID`),
  CONSTRAINT `fk_Trip_Group1`
    FOREIGN KEY (`Trip_Group_ID`)
    REFERENCES `ISY-CF`.`Trip_Group` (`Trip_Group_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Trip_Trip_Group1_idx` ON `ISY-CF`.`Trip` (`Trip_Group_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Electricity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Electricity` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Electricity` (
  `Electricity_ID` INT NOT NULL AUTO_INCREMENT,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Meter_Units` INT NOT NULL,
  PRIMARY KEY (`Electricity_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Generator`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Generator` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Generator` (
  `Generator_ID` INT NOT NULL AUTO_INCREMENT,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  PRIMARY KEY (`Generator_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`AC_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`AC_Type` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`AC_Type` (
  `AC_Type_ID` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`AC_Type_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`AC_coolant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`AC_coolant` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`AC_coolant` (
  `AC_Coolant_ID` INT NOT NULL AUTO_INCREMENT,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  PRIMARY KEY (`AC_Coolant_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`AC_Consumables`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`AC_Consumables` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`AC_Consumables` (
  `AC_Type_ID` INT NOT NULL,
  `AC_Coolant_ID` INT NOT NULL,
  PRIMARY KEY (`AC_Type_ID`, `AC_Coolant_ID`),
  CONSTRAINT `fk_AC_Consumables_AC_Type1`
    FOREIGN KEY (`AC_Type_ID`)
    REFERENCES `ISY-CF`.`AC_Type` (`AC_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AC_Consumables_AC_coolant1`
    FOREIGN KEY (`AC_Coolant_ID`)
    REFERENCES `ISY-CF`.`AC_coolant` (`AC_Coolant_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_AC_Consumables_AC_coolant1_idx` ON `ISY-CF`.`AC_Consumables` (`AC_Coolant_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Waste_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Waste_Type` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Waste_Type` (
  `Waste_Type_ID` INT NOT NULL,
  `Description` VARCHAR(80) NOT NULL,
  `Capacity` INT NOT NULL,
  `Total` INT NOT NULL,
  PRIMARY KEY (`Waste_Type_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Waste`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Waste` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Waste` (
  `Waste_ID` INT NOT NULL,
  `Waste_Type_ID` INT NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  PRIMARY KEY (`Waste_ID`),
  CONSTRAINT `fk_Waste_Waste_Type1`
    FOREIGN KEY (`Waste_Type_ID`)
    REFERENCES `ISY-CF`.`Waste_Type` (`Waste_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Waste_Waste_Type1_idx` ON `ISY-CF`.`Waste` (`Waste_Type_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Paper`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Paper` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Paper` (
  `Paper_ID` INT NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `A4_Reams` INT NOT NULL,
  `A3_Reams` INT NOT NULL,
  PRIMARY KEY (`Paper_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Meat_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Meat_Type` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Meat_Type` (
  `Meat_Type_ID` INT NOT NULL,
  `Description` DATE NOT NULL,
  PRIMARY KEY (`Meat_Type_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ISY-CF`.`Meat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Meat` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Meat` (
  `Meat_ID` INT NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  `Meat_Type_ID` INT NOT NULL,
  PRIMARY KEY (`Meat_ID`),
  CONSTRAINT `fk_Meat_Meat_Type1`
    FOREIGN KEY (`Meat_Type_ID`)
    REFERENCES `ISY-CF`.`Meat_Type` (`Meat_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Meat_Meat_Type1_idx` ON `ISY-CF`.`Meat` (`Meat_Type_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`Year_Book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`Year_Book` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`Year_Book` (
  `YearBook_ID` INT NOT NULL,
  `Year` DATE NOT NULL,
  `Paper_Paper_ID` INT NOT NULL,
  PRIMARY KEY (`YearBook_ID`),
  CONSTRAINT `fk_Year_Book_Paper1`
    FOREIGN KEY (`Paper_Paper_ID`)
    REFERENCES `ISY-CF`.`Paper` (`Paper_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Year_Book_Paper1_idx` ON `ISY-CF`.`Year_Book` (`Paper_Paper_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`AC_CO2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`AC_CO2` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`AC_CO2` (
  `AC_CO2_ID` INT NOT NULL AUTO_INCREMENT,
  `AC_Type_ID` INT NOT NULL,
  `Start_Date` DATE NOT NULL,
  `Multiplier` INT NOT NULL,
  PRIMARY KEY (`AC_CO2_ID`),
  CONSTRAINT `AC_Type_ID`
    FOREIGN KEY (`AC_Type_ID`)
    REFERENCES `ISY-CF`.`AC_Type` (`AC_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_AC_CO2_AC_Type1_idx` ON `ISY-CF`.`AC_CO2` (`AC_Type_ID` ASC);

CREATE UNIQUE INDEX `AC_CO2_ID_UNIQUE` ON `ISY-CF`.`AC_CO2` (`AC_CO2_ID` ASC);


-- -----------------------------------------------------
-- Table `ISY-CF`.`AC_Amount`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ISY-CF`.`AC_Amount` ;

CREATE TABLE IF NOT EXISTS `ISY-CF`.`AC_Amount` (
  `AC_Amount_ID` INT NOT NULL AUTO_INCREMENT,
  `AC_Type_ID` INT NOT NULL,
  `Checked_Date` DATE NOT NULL,
  `Amount` INT NOT NULL,
  PRIMARY KEY (`AC_Amount_ID`),
  CONSTRAINT `fk_AC_Amount_AC_Type1`
    FOREIGN KEY (`AC_Type_ID`)
    REFERENCES `ISY-CF`.`AC_Type` (`AC_Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_AC_Amount_AC_Type1_idx` ON `ISY-CF`.`AC_Amount` (`AC_Type_ID` ASC);

CREATE UNIQUE INDEX `AC_Amount_ID_UNIQUE` ON `ISY-CF`.`AC_Amount` (`AC_Amount_ID` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
