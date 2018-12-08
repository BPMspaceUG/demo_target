	DROP DATABASE IF EXISTS `bpmspace_DemoTarget`;
	CREATE DATABASE `bpmspace_DemoTender` /*!40100 DEFAULT CHARACTER SET UTF8 */;

	CREATE TABLE `bpmspace_DemoTender`.`DemoTender_person` (
	  `DemoTender_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_person_name` VARCHAR(45) NULL,
	  `DemoTender_person_e_mail` VARCHAR(45) NULL,
	  PRIMARY KEY (`DemoTender_person_ID`));

	  CREATE TABLE `bpmspace_DemoTender`.`DemoTender_investment_type` (
	  `DemoTender_investment_type_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_investment_type_name` VARCHAR(45) NULL,
	  PRIMARY KEY (`DemoTender_investment_type_ID`));
	  
	  CREATE TABLE `bpmspace_DemoTender`.`DemoTender_lmp_type` (
	  `DemoTender_lmp_type_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_lmp_type_name` VARCHAR(45) NULL,
	  PRIMARY KEY (`DemoTender_lmp_type_ID`));
	 
	  CREATE TABLE `bpmspace_DemoTender`.`DemoTender_segment` (
	  `DemoTender_segment_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_segment_name` VARCHAR(45) NULL,
	  PRIMARY KEY (`DemoTender_segment_ID`));
	 
	  CREATE TABLE `bpmspace_DemoTender`.`DemoTender_task` (
	  `DemoTender_task_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_task_name` VARCHAR(45) NULL,
	  `DemoTender_person_ID` BIGINT(20)UNSIGNED NULL,
	  `DemoTender_tender_ID` BIGINT(20)UNSIGNED NULL,
	  PRIMARY KEY (`DemoTender_task_ID`));
	 
	 CREATE TABLE `bpmspace_DemoTender`.`DemoTender_tender` (
	  `DemoTender_tender_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoTender_tender_name` VARCHAR(45) NULL,
	  `DemoTender_tender_match` VARCHAR(45) NULL,
	  `DemoTender_tender_legal` VARCHAR(45) NULL,
	  `DemoTender_tender_country` VARCHAR(45) NULL,
	  `DemoTender_tender_city` VARCHAR(45) NULL,
	  `DemoTender_tender_keyfacts` VARCHAR(45) NULL,
	  `DemoTender_tender_revenue` INT NULL,
	  `DemoTender_tender_ebitda` INT NULL,
	  `DemoTender_tender_initial_request_valuation` INT NULL,
	  `DemoTender_tender_effort` INT NULL,
	  `DemoTender_tender_contact_date` TIMESTAMP DEFAULT NOW(),
	  `DemoTender_tender_comment` VARCHAR(5000),
	  `DemoTender_tender_investment_type_ID` BIGINT(20) UNSIGNED NULL,
	  `DemoTender_tender_lmp_type_ID` BIGINT(20) UNSIGNED NULL,
	  `DemoTender_tender_segment_ID` BIGINT(20) UNSIGNED NULL,
	  `DemoTender_tender_owner_person_ID` BIGINT(20) UNSIGNED NULL,
	  `DemoTender_tender_contact_person_ID` BIGINT(20) UNSIGNED NULL,
	  
	  PRIMARY KEY (`DemoTender_tender_ID`));
	  
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD INDEX `investment_type_ID_fk_5345_idx` (`DemoTender_tender_investment_type_ID` ASC);
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD CONSTRAINT `investment_type_ID_fk_5345`
  FOREIGN KEY (`DemoTender_tender_investment_type_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_investment_type` (`DemoTender_investment_type_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD INDEX `lmp_type_ID_idx` (`DemoTender_tender_lmp_type_ID` ASC);
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD CONSTRAINT `lmp_type_ID_fk_4208`
  FOREIGN KEY (`DemoTender_tender_lmp_type_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_lmp_type` (`DemoTender_lmp_type_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD INDEX `segment_ID_fk_4293_idx` (`DemoTender_tender_segment_ID` ASC);
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD CONSTRAINT `segment_ID_fk_4293`
  FOREIGN KEY (`DemoTender_tender_segment_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_segment` (`DemoTender_segment_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD INDEX `owner_person_ID_fk_0538_idx` (`DemoTender_tender_owner_person_ID` ASC) ;
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD CONSTRAINT `owner_person_ID_fk_0538`
  FOREIGN KEY (`DemoTender_tender_owner_person_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_person` (`DemoTender_person_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
   
  ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD INDEX `contact_person_ID_fk_7534_idx` (`DemoTender_tender_contact_person_ID` ASC) ;
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_tender` 
ADD CONSTRAINT `contact_person_ID_fk_7534`
  FOREIGN KEY (`DemoTender_tender_contact_person_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_person` (`DemoTender_person_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

 
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_task` 
ADD INDEX `responsible_person_ID_fk_6032_idx` (`DemoTender_task_responsible_person_ID` ASC) ;
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_task` 
ADD CONSTRAINT `responsible_person_ID_fk_6032`
  FOREIGN KEY (`DemoTender_task_responsible_person_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_person` (`DemoTender_person_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `bpmspace_DemoTender`.`DemoTender_task` 
ADD INDEX `tender_ID_fk_8276_idx` (`DemoTender_task_tender_ID` ASC);
;
ALTER TABLE `bpmspace_DemoTender`.`DemoTender_task` 
ADD CONSTRAINT `tender_ID_fk_8276`
  FOREIGN KEY (`DemoTender_task_tender_ID`)
  REFERENCES `bpmspace_DemoTender`.`DemoTender_tender` (`DemoTender_tender_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `DemoTarget_legal` (
  `DemoTarget_legal_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_legal_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_legal_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `DemoTarget_country` (
  `DemoTarget_country_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



  
  
