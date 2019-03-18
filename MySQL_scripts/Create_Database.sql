DROP DATABASE  IF EXISTS `dab2-formule1`;
CREATE DATABASE  IF NOT EXISTS `dab2-formule1`;
USE `dab2-formule1`;

-- Table 1
CREATE TABLE `tblland` (
  `ID` int(11) NOT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  `blobVlag` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 2
CREATE TABLE `tblseizoen` (
	`Seizoen` int(11) NOT NULL,
    `vanDatum` date  DEFAULT NULL,
    `totDatum` date default null,
    primary key(`Seizoen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 2
CREATE TABLE `tblconstructeur` (
  `ID` int(11) NOT NULL,
  `landID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblConstructeur_tblLand` (`landID`),
  CONSTRAINT `FK_tblConstructeur_tblLand` FOREIGN KEY (`landID`) REFERENCES `tblland` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table `tblteam` (
  `ID` int(11) NOT NULL,
  `constructeurID` int(11) default null,
  `landID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  primary key(`ID`),
  key `FK_tblteam_tblland` (`landID`),
  constraint `FK_tblteam_tblland` foreign key (`landID`) references `tblland` (`ID`) on delete no action on update no action,
  key `FK_tblteam_tblconstructeur` (`constructeurID`),
  constraint `FK_tblteam_tblconstructeur` foreign key (`constructeurID`) references `tblconstructeur` (`ID`) on delete no action on update no action
) engine=InnoDB default charset=latin1;

-- Table 3
CREATE TABLE `tblfabrikant` (
  `ID` int(11) NOT NULL,
  `landID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  `strWebsite` varchar(50) DEFAULT NULL,
  `blobFoto` longblob,
  PRIMARY KEY (`ID`),
  KEY `FK_tblFabrikant_tblLand` (`landID`),
  CONSTRAINT `FK_tblFabrikant_tblLand` FOREIGN KEY (`landID`) REFERENCES `tblland` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 4
CREATE TABLE `tblchassis` (
  `ID` int(11) NOT NULL,
  `fabrikantID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblChassis_tblFabrikant` (`fabrikantID`),
  CONSTRAINT `FK_tblChassis_tblFabrikant` FOREIGN KEY (`fabrikantID`) REFERENCES `tblfabrikant` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 5
CREATE TABLE `tblmateriaal` (
  `ID` int(11) NOT NULL,
  `strMateriaal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 6
CREATE TABLE `tblchassismateriaal` (
  `ID` int(11) NOT NULL,
  `chassisID` int(11) DEFAULT NULL,
  `materiaalID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblChassisMateriaal_tblChassis` (`chassisID`),
  KEY `FK_tblChassisMateriaal_tblMateriaal` (`materiaalID`),
  CONSTRAINT `FK_tblChassisMateriaal_tblChassis` FOREIGN KEY (`chassisID`) REFERENCES `tblchassis` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblChassisMateriaal_tblMateriaal` FOREIGN KEY (`materiaalID`) REFERENCES `tblmateriaal` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 7
CREATE TABLE `tbltransmissie` (
  `ID` int(11) NOT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 8
CREATE TABLE `tblmotor` (
  `ID` int(11) NOT NULL,
  `fabrikantID` int(11) DEFAULT NULL,
  `transmissieID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblMotor_tblFabrikant` (`fabrikantID`),
  KEY `FK_tblMotor_tblTransmissie` (`transmissieID`),
  CONSTRAINT `FK_tblMotor_tblFabrikant` FOREIGN KEY (`fabrikantID`) REFERENCES `tblfabrikant` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblMotor_tblTransmissie` FOREIGN KEY (`transmissieID`) REFERENCES `tbltransmissie` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 9
CREATE TABLE `tbltype` (
  `ID` int(11) NOT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 10
CREATE TABLE `tblbanden` (
  `ID` int(11) NOT NULL,
  `fabrikantID` int(11) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `strNaam` varchar(50) DEFAULT NULL,
  `strKenmerk` varchar(50) DEFAULT NULL,
  `intCompound` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblBanden_tblFabrikant` (`fabrikantID`),
  KEY `FK_tblBanden_tblType` (`typeID`),
  CONSTRAINT `FK_tblBanden_tblFabrikant` FOREIGN KEY (`fabrikantID`) REFERENCES `tblfabrikant` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblBanden_tblType` FOREIGN KEY (`typeID`) REFERENCES `tbltype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 11
CREATE TABLE `tblcircuit` (
	`ID` int(11) NOT NULL,
    `landID` int(11) DEFAULT NULL,
    `intGPnummer` int(11) DEFAULT NULL,
	`strNaamCircuit` varchar(50) DEFAULT NULL,
	`strPlaats` varchar(50) DEFAULT NULL,
    `numLengte` decimal(18,3) DEFAULT NULL,
    KEY `FK_tblcircuit_tblLand` (`landID`),
	CONSTRAINT `FK_tblcircuit_tblLand` FOREIGN KEY (`landID`) REFERENCES `tblland` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 12
CREATE TABLE `tblkalender` (
  `ID` int(11) NOT NULL,
  `circuitID` int(11) DEFAULT NULL,
  `Seizoen` int(5),
  `dtDatum` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tblkalender_tblcircuit` (`circuitID`),
  CONSTRAINT `FK_tblkalender_tblcircuit` FOREIGN KEY (`circuitID`) REFERENCES `tblcircuit` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  KEY `FK_tblkalender_tblseizoen` (`Seizoen`),
  constraint `FK_tblkalender_tblseizoen` foreign key (`Seizoen`) references `tblseizoen` (`Seizoen`) ON delete no action on update no action
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
-- Table 14
CREATE TABLE `tblfunctie` (
  `ID` int(11) NOT NULL,
  `strNaam` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 15
CREATE TABLE `tblpuntenrace` (
  `ID` int(11) NOT NULL,
  `intPlaats` int(11) DEFAULT NULL,
  `intPunten` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 16
CREATE TABLE `tblpersoon` (
  `ID` int(11) NOT NULL,
  `strVoorNaam` varchar(50) DEFAULT NULL,
  `strTussenVoegsel` varchar(50) DEFAULT NULL,
  `strAchterNaam` varchar(50) DEFAULT NULL,
  `dtGeboorteDatum` date DEFAULT NULL,
  `strWebsite` varchar(50) DEFAULT NULL,
  `blobFoto` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 17
CREATE TABLE `tblcareer` (
	`ID` int(11) NOT NULL,
    `persoonID` int(11) DEFAULT NULL,
    `teamID` int(11) DEFAULT NULL,
    `functieID` int(11) DEFAULT NULL,
    `vanSeizoen` int(5) DEFAULT NULL,
	`totSeizoen` int(5) DEFAULT NULL,
    `intNumber` int(3) Default null,
    primary key (`ID`),
    key `FK_tblCareer_tblpersoon` (`persoonID`),
    key `FK_tblCareer_tblteam` (`teamID`),
    key `FK_tblCareer_tblfunctie` (`functieID`),
    constraint `FK_tblCareer_tblpersoon` foreign key (`persoonID`) references `tblpersoon` (`ID`) on delete no action on update no action,
    constraint `FK_tblCareer_tblteam` foreign key (`teamID`) references `tblteam` (`ID`) on delete no action on update no action,
    constraint `FK_tblCareer_tblfunctie` foreign key (`functieID`) references `tblfunctie` (`ID`) on delete no action on update no action
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Table 18
CREATE TABLE `tblpuntencoureur` (
  `ID` int(11) NOT NULL,
  `kalenderID` int(11) DEFAULT NULL,
  `puntenRaceID` int(11) DEFAULT NULL,
  `persoonID` int(11) DEFAULT NULL,
  `dnfBool` boolean default FALSE CHECK(puntenRaceID ),
  PRIMARY KEY (`ID`),
  KEY `FK_tblWinnendeCoureur_tblKalender` (`kalenderID`),
  KEY `FK_tblWinnendeCoureur_tblPersoon` (`persoonID`),
  KEY `FK_tblWinnendeCoureur_tblPuntenTelling` (`puntenRaceID`),
  CONSTRAINT `FK_tblWinnendeCoureur_tblKalender` FOREIGN KEY (`kalenderID`) REFERENCES `tblkalender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblWinnendeCoureur_tblPersoon` FOREIGN KEY (`persoonID`) REFERENCES `tblpersoon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblWinnendeCoureur_tblPuntenTelling` FOREIGN KEY (`puntenRaceID`) REFERENCES `tblpuntenrace` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 19
CREATE TABLE `tblpoleposition` (
  `ID` int(11) NOT NULL,
  `persoonID` int(11) DEFAULT NULL,
  `kalenderID` int(11) DEFAULT NULL,
  KEY `FK_tblPolePosition_tblKalender` (`kalenderID`),
  KEY `FK_tblPolePosition_tblPersoon` (`persoonID`),
  CONSTRAINT `FK_tblPolePosition_tblKalender` FOREIGN KEY (`kalenderID`) REFERENCES `tblkalender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblPolePosition_tblPersoon` FOREIGN KEY (`persoonID`) REFERENCES `tblpersoon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 20
CREATE TABLE `tblsnelsteronde` (
  `ID` int(11) NOT NULL,
  `persoonID` int(11) DEFAULT NULL,
  `kalenderID` int(11) DEFAULT NULL,
  KEY `FK_tblSnelsteRonde_tblKalender` (`kalenderID`),
  KEY `FK_tblSnelsteRonde_tblPersoon` (`persoonID`),
  CONSTRAINT `FK_tblSnelsteRonde_tblKalender` FOREIGN KEY (`kalenderID`) REFERENCES `tblkalender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblSnelsteRonde_tblPersoon` FOREIGN KEY (`persoonID`) REFERENCES `tblpersoon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 21
CREATE TABLE `tblpersoonland` (
  `ID` int(11) NOT NULL,
  `persoonID` int(11) DEFAULT NULL,
  `landID` int(11) DEFAULT NULL,
  KEY `FK_tblPersoon_tblpersoonland` (`persoonID`),
  KEY `FK_tblpersoonland_tblLand` (`landID`),
  CONSTRAINT `FK_tblPersoon_tblpersoonland` FOREIGN KEY (`persoonID`) REFERENCES `tblpersoon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tblpersoonland_tblLand` FOREIGN KEY (`landID`) REFERENCES `tblland` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 22
CREATE TABLE `tblbasis` (
	`ID` int(11) NOT NULL,
    `fabrikantID` int(11) default NULL,
    `strBasis` varchar(50) DEFAULT NULL,
    KEY `FK_tblbasis_tblfabrikant` (`fabrikantID`),
    CONSTRAINT `FK_tblbasis_tblfabrikant` foreign key (`fabrikantID`) references `tblfabrikant` (`ID`) on delete no action on update no action
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table 23
CREATE TABLE `tblauto` (
	`ID` int(11) NOT NULL,
    `motorID` int(11) default null,
    `chassisID` int(11) default null,
    `seizoen` int(5) NOT NULL,
    `constructeurID` int(11) default NULL,
    primary key (`ID`),
    key `FK_tblauto_tblseizoen` (`seizoen`),
    constraint `FK_tblauto_tblseizoen` foreign key (`seizoen`) references `tblseizoen` (`Seizoen`) on delete no action on update no action,
    key `FK_tblauto_tblmotor` (`motorID`),
    constraint `FK_tblauto_tblmotor` foreign key (`motorID`) references `tblmotor` (`ID`) on delete no action on update no action,
    key `FK_tblauto_tblchassis` (`chassisID`),
    constraint `FK_tblauto_tblchassis` foreign key (`chassisID`) references `tblchassis` (`ID`) on delete no action on update no action,
    key `FK_tblauto_tblconstructeur` (`constructeurID`),
    constraint `FK_tblauto_tblconstructeur` foreign key (`constructeurID`) references `tblconstructeur` (`ID`) on delete no action on update no action
) engine=InnoDB default charset=latin1;