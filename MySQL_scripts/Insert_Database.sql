use `dab2-formule1`;
-- table 1
LOCK TABLES `tblland` WRITE;
INSERT INTO `tblland` 
VALUES 	(1,'Australië',NULL),
		(2,'Bahrein',NULL),
        (3,'China',NULL),
        (4,'Azerbeidzjan',NULL),
        (5,'Spanje',NULL),
        (6,'Monaco',NULL),
        (7,'Canada',NULL),
        (8,'Frankrijk',NULL),
        (9,'Oostenrijk',NULL),
        (10,'Verenigd Koninkrijk',NULL),
        (11,'Duitsland',NULL),
        (12,'Hongarije',NULL),
        (13,'BelgiÃ«',NULL),
        (14,'ItaliÃ«',NULL),
        (15,'Singapore',NULL),
        (16,'Rusland',NULL),
        (17,'Japan',NULL),
        (18,'Verenigde Staten',NULL),
        (19,'Mexico',NULL),
        (20,'BraziliÃ«',NULL),
        (21,'Abu Dhabi',NULL),
        (22,'Zwitserland',NULL),
        (23,'Nederland',NULL),
        (24,'Finland',NULL),
        (25,'Mauritius',NULL),
        (26, 'Nieuw-Zeeland', NULL),
        (27, 'Denemarken', NULL),
        (28, 'Zweden', NULL);
UNLOCK TABLES;

-- Table 2
lock tables `tblseizoen` write;
insert into `tblseizoen`
values 	(2018, '2018-3-25', '2018-11-25'),
		(2019, '2019-3-17', '2019-12-1');
unlock tables;

-- Table 2
LOCK TABLES `tblconstructeur` WRITE;
INSERT INTO `tblconstructeur` 
VALUES 	(1,14,'Ferrari'),
		(2,10,'Force India-Mercedes'),
        (3,18,'Haas-Ferrari'),
        (4,10,'McLaren-Renault'),
        (5,11,'Mercedes'),
        (6,9,'Red Bull-TAG Heuer'),
        (7,8,'Renault'),
        (8,22,'Sauber-Ferrari'),
        (9,14,'Toro Rosso-Honda'),
        (10,10,'Williams-Mercedes');
UNLOCK TABLES;

-- Table 3
lock tables `tblteam` write;
INSERT INTO `dab2-formule1`.`tblteam` (`ID`, `constructeurID`, `landID`, `strNaam`)
VALUES 	(1,1,14,'Scuderia Ferrari'),
		(2,2,10,'Racing Point Force India F1 Team'),
        (3,3,18,'Haas F1 Team'),
        (4,4,10,'McLaren F1 Team'),
        (5,5,11,'Mercedes AMG Petronas Motorsport'),
        (6,6,9,'Aston Martin Red Bull Racing'),
        (7,7,8,'Renault Sport Formula One Team'),
        (8,8,22,'Alfa Romeo Sauber F1 Team'),
        (9,9,14,'Red Bull Toro Rosso Honda'),
        (10,10,10,'Williams Martini Racing'),
        (11,2,10,'Sahara Force India F1 Team');
unlock tables;

-- Table 3
LOCK TABLES `tblfabrikant` WRITE;
INSERT INTO `tblfabrikant` 
VALUES	(1,14,'Pirelli','https://www.pirelli.com/global/en-ww/homepage', NULL),
		(2,14,'Ferrari','https://www.ferrari.com',NULL),
        (3,11,'Mercedes','https://www.mercedes-benz.de',NULL),
        (4,8,'Renault','https://group.renault.com',NULL),
        (5,17,'Honda','https://global.honda',NULL),
        (6,22,'TAG Heuer','https://www.tagheuer.com/en',NULL),
        (7,10,'Red Bull','https://www.redbull.com',NULL),
        (8,10,'Force India','https://www.forceindiaf1.com',NULL),
        (9,18,'Haas','https://www.haasf1team.com',NULL),
        (10,10,'McLaren','https://www.mclaren.com',NULL),
        (11,22,'Sauber','https://www.sauberf1team.com',NULL),
        (12,14,'Torro Rosso','https://scuderiatororosso.redbull.com/en_INT',NULL),
        (13,10,'Williams','https://www.williamsf1.com',NULL);
UNLOCK TABLES;

-- Table 4
LOCK TABLES `tblchassis` WRITE;
INSERT INTO `tblchassis` 
VALUES 	(1,2,'SF71H'),
		(2,8,'VJM11'),
		(3,9,'VF-18'),
		(4,10,'MCL33'),
        (5,3,'F1 W09 EQ Power+'),
        (6,7,'RB14'),
        (7,4,'R.S.18'),
        (8,11,'C37'),
        (9,12,'STR13'),
        (10,13,'FW41');
UNLOCK TABLES;

-- Table 5
LOCK TABLES `tblmateriaal` WRITE;
INSERT INTO `tblmateriaal` 
VALUES 	(1,'Koolstofvezel '),
		(2,'Honingraatcomposieten');
UNLOCK TABLES;

-- Table 6
LOCK TABLES `tblchassismateriaal` WRITE;
INSERT INTO `tblchassismateriaal` 
VALUES 	(1,1,1),
		(2,1,2),
        (3,2,1),
        (4,2,2),
        (5,3,1),
        (6,3,2),
        (7,4,1),
        (8,4,2),
        (9,5,1),
        (10,5,2),
        (11,6,1),
        (12,6,2),
        (13,7,1),
        (14,7,2),
        (15,8,1),
        (16,8,2),
        (17,9,1),
        (18,9,2),
        (19,10,1),
        (20,10,2);
UNLOCK TABLES;

-- Table 7
LOCK TABLES `tbltransmissie` WRITE;
INSERT INTO `tbltransmissie` 
VALUES 	(1,'8 versnellingen versnellingsbak');
UNLOCK TABLES;

-- Table 8
LOCK TABLES `tblmotor` WRITE;
INSERT INTO `tblmotor` 
VALUES 	(1,2,1,'Ferrari 062 EVO'),
		(2,3,1,'Mercedes M09 EQ Power+'),
        (3,4,1,'Renault R.E. 18'),
        (4,5,1,'Honda RA618H'),
        (5,6,1,'TAG Heurer');
UNLOCK TABLES;

-- Table 9
LOCK TABLES `tbltype` WRITE;
INSERT INTO `tbltype` 
VALUES 	(1,'Droogweerband'),
		(2,'Regenband');
UNLOCK TABLES;

-- Table 10
LOCK TABLES `tblbanden` WRITE;
INSERT INTO `tblbanden` 
VALUES 	(1,1,1,'Hypersoft','Roze streep',1),
		(2,1,1,'Ultrasoft ','Paarse streep',2),
		(3,1,1,'Supersoft ','Rode streep',3),
		(4,1,1,'Soft ','Gele streep',4),
		(5,1,1,'Medium ','Witte streep',5),
		(6,1,1,'Hard ','Blauwe streep',6),
		(7,1,1,'Superhard ','Oranje streep',7),
		(8,1,2,'Intermediate ','Groene streep',0),
		(9,1,2,'Wet ','Lichtblauwe streep',0);
UNLOCK TABLES;

-- Table 11
LOCK TABLE `tblcircuit` WRITE;
INSERT INTO `tblcircuit` 
VALUES (1,1,1, 'Albert Park', 'Melbourne', 5.303),
(2,2,2, 'Bahrain International Circuit', 'Sakhir', 5.412),
(3,3,3, 'Shanghai International Circuit', 'Jiading', 5.415),
(4,4,4, 'Baku City Circuit','Bakoe',6.003),
(5,5,5,'Circuit de Barcelona-Catalunya','MontmelÃ³',4.655),
(6,6,6,'Circuit de Monaco','Monte Carlo',3.340),
(7,7,7,'Circuit Gilles Villeneuve','Montreal',4.361),
(8,8,8,'Circuit Paul Ricard','Le Castellet',5.809),
(9,9,9,'Red Bull Ring','Spielberg',4.326),
(10,10,10,'Silverstone Circuit','Silverstone',5.890),
(11,11,11,'Hockenheimring','Hockenheim',4.574),
(12,12,12,'Hungaroring','MogyorÃ³d	',4.381),
(13,13,13,'Circuit Spa-Francorchamps','Francorchamps',7.004),
(14,14,14,'Autodromo Nazionale Monza','Monza',5.793),
(15,15,15,'Marina Bay Street Circuit','Singapore',5.067),
(16,16,16,'Sochi Autodrom','Sotsji',5.848),
(17,17,17,'Suzuka International Racing Course','Suzuka',5.807),
(18,18,18,'Circuit of the Americas','Texas',5.470),
(19,19,19,'AutÃ³dromo Hermanos RodrÃ­guez','Mexico-Stad',4.438),
(20,20,20,'AutÃ³dromo de Interlagos JosÃ© Carlos Pace','Cidade Dutra',4.309),
(21,21,21,'Yas Marina Circuit','Yas',5.554);
UNLOCK TABLES;

-- Table 12
LOCK TABLES `tblkalender` WRITE;
INSERT INTO `tblkalender` 
VALUES 	(1,1, 2018,'2018-03-25'),
		(2,2, 2018,'2018-04-08'),
		(3,3, 2018,'2018-04-18'),
		(4,4, 2018,'2018-04-29'),
		(5,5, 2018,'2018-05-13'),
		(6,6, 2018,'2018-05-27'),
		(7,7, 2018,'2018-06-10'),
		(8,8, 2018,'2018-06-24'),
		(9,9, 2018,'2018-07-01'),
		(10,10, 2018,'2018-07-08'),
		(11,11, 2018,'2018-07-22'),
		(12,12, 2018,'2018-07-29'),
		(13,13, 2018,'2018-08-26'),
		(14,14, 2018,'2018-09-02'),
		(15,15, 2018,'2018-09-16'),
		(16,16, 2018,'2018-09-30'),
		(17,17, 2018,'2018-10-07'),
		(18,18, 2018,'2018-10-21'),
		(19,19, 2018,'2018-10-28'),
		(20,20, 2018,'2018-11-11'),
		(21,21, 2018,'2018-11-25');
UNLOCK TABLES;

-- Table 14
LOCK TABLES `tblfunctie` WRITE;
INSERT INTO `tblfunctie` 
VALUES 	(1,'Coureur'),
		(2,'Test Coureur'),
        (3,'Leiding'),
        (4,'Technisch Directeur'),
        (5,'Manager'),
        (6,'Commerciel Directeur');
UNLOCK TABLES;

-- Table 15
LOCK TABLES `tblpuntenrace` WRITE;
INSERT INTO `tblpuntenrace` 
VALUES 	(1,1,25),
		(2,2,18),
        (3,3,15),
        (4,4,12),
        (5,5,10),
        (6,6,8),
        (7,7,6),
        (8,8,4),
        (9,9,2),
        (10,10,1);
UNLOCK TABLES;

-- Table 16
LOCK TABLES `tblpersoon` WRITE;
INSERT INTO `tblpersoon` 
VALUES 	(1,'Max','','Verstappen','1997-09-30','https://www.verstappen.nl',NULL),
		(2,'Daniel','','Ricciardo','1989-07-01','http://danielricciardo.com/',NULL),
        (3,'Sebastien','','Buemi','1988-10-31','https://www.buemi.ch/en/home',NULL),
        (4,'Lewis','','Hamilton','1985-01-07','https://www.lewishamilton.com/',NULL),
        (5,'Valtteri','','Bottas','1989-08-28','http://valtteribottas.com/',NULL),
        (6,'Pascal','','Wehrlein','1994-10-18','http://www.pascal-wehrlein.de/',NULL),
        (7,'Sebastian','','Vettel','1987-07-03','https://www.sebastianvettel.de/',NULL),
        (8,'Kimi','','RÃ¤ikkonen','1979-10-17','https://www.kimiraikkonen.com/',NULL),
        (9,'Kevin','','Magnussen','1992-10-05','https://www.haasf1team.com/',NULL),
        (10,'Fernando','','Alonso','1981-07-29','http://www.fernandoalonso.com/',NULL),
        (11,'Nico','','HÃ¼lkenberg','1987-08-19','https://www.nicohulkenberg.net/',NULL),
        (12,'Stoffel','','Vandoorne','1992-03-26','http://stoffelvandoorne.com/',NULL),
        (13,'Carlos','','Sainz jr.','1994-09-01','https://www.carlossainz.es/',NULL),
        (14,'Sergio','','PÃ©rez','1990-01-26','https://sergioperez.mx/',NULL),
        (16,'Esteban','','Ocon','1996-09-17','http://www.esteban-ocon.com/',NULL),
        (17,'Charles','','Leclerc','1997-10-16','https://www.charlesleclerc.com/',NULL),
        (18,'Romain','','Grosjean','1986-04-17','http://www.romaingrosjean.com/en/home/',NULL),
        (19,'Pierre','','Gasly','1996-02-07','https://www.pierregasly.com/',NULL),
        (20,'Marcus','','Ericsson','1990-09-02','https://marcusericsson.com/',NULL),
        (21,'Lance','','Stroll','1998-10-29','https://www.lancestroll.com/',NULL),
        (22,'Brendon','','Hartley','1989-11-10','http://www.brendonhartley.nz/',NULL),
        (23,'Sergey','','Sirotkin','1995-08-27','http://sirotkinsergey.com/home-en.html',NULL);
UNLOCK TABLES;

-- Table 17
LOCK TABLES `tblpuntencoureur` WRITE;
INSERT INTO `tblpuntencoureur` 
VALUES 	(1,1,1,7, FALSE),
		(2,1,2,4, FALSE),
        (3,1,3,8, FALSE),
        (4,1,4,2, FALSE),
        (5,1,5,10, FALSE),
        (6,1,6,1, FALSE),
        (7,1,7,11, FALSE),
        (8,1,8,5, FALSE),
        (9,1,9,4, FALSE),
        (10,1,10,13, FALSE),
        (11,2,1,7, FALSE),
        (12,2,2,5, FALSE),
        (13,2,3,4, FALSE),
        (14,2,4,19, FALSE),
        (15,2,5,9, FALSE),
        (16,2,6,11, FALSE),
        (17,2,7,10, FALSE),
        (18,2,8,12, FALSE),
        (19,2,9,20, FALSE),
        (20,2,10,16, FALSE),
        (21,3,1,2, FALSE),
        (22,3,2,5, FALSE),
        (23,3,3,8, FALSE),
        (24,3,4,4, FALSE),
        (25,3,5,1,FALSE),
        (26,3,6,11,FALSE),
        (27,3,7,10,FALSE),
        (28,3,8,7,FALSE),
        (29,3,9,13,FALSE),
        (30,3,10,9,FALSE),
        (31,4,1,4,FALSE),
        (32,4,2,8,FALSE),
        (33,4,3,14,FALSE),
        (34,4,4,7,FALSE),
        (35,4,5,13,FALSE),
        (36,4,6,17,FALSE),
        (37,4,7,10,FALSE),
        (38,4,8,21,FALSE),
        (39,4,9,12,FALSE),
        (40,4,10,22,FALSE),
        (41,5,1,4,FALSE),
        (42,5,2,5,FALSE),
        (43,5,3,1,FALSE),
        (44,5,4,7,FALSE),
        (45,5,5,2,FALSE),
        (46,5,6,9,FALSE),
        (47,5,7,13,FALSE),
        (48,5,8,10,FALSE),
        (49,5,9,14,FALSE),
        (50,5,10,17,FALSE),
        (51,6,1,2,FALSE),
        (52,6,2,7,FALSE),
        (53,6,3,4,FALSE),
        (54,6,4,8,FALSE),
        (55,6,5,5,FALSE),
        (56,6,6,16,FALSE),
        (57,6,7,19,FALSE),
        (58,6,8,11,FALSE),
        (59,6,9,1,FALSE),
        (60,6,10,13,FALSE),
        (61,7,1,7,FALSE),
        (62,7,2,5,FALSE),
        (63,7,3,1,FALSE),
        (64,7,4,2,FALSE),
        (65,7,5,4,FALSE),
        (66,7,6,8,FALSE),
        (67,7,7,11,FALSE),
        (68,7,8,13,FALSE),
        (69,7,9,16,FALSE),
        (70,7,10,17,FALSE),
        (71,8,1,4,FALSE),
        (72,8,2,1,FALSE),
        (73,8,3,8,FALSE),
        (74,8,4,2,FALSE),
        (75,8,5,7,FALSE),
        (76,8,6,9,FALSE),
        (77,8,7,5,FALSE),
        (78,8,8,13,FALSE),
        (79,8,9,11,FALSE),
        (80,8,10,17,FALSE),
        (81,9,1,1,FALSE),
        (82,9,2,8,FALSE),
        (83,9,3,7,FALSE),
        (84,9,4,18,FALSE),
        (85,9,5,20,FALSE),
        (86,9,6,16,FALSE),
        (87,9,7,14,FALSE),
        (88,9,8,10,FALSE),
        (89,9,9,17,FALSE),
        (90,9,10,20,FALSE),
        (91,10,1,7,FALSE),
        (92,10,2,4,FALSE),
        (93,10,3,8,FALSE),
        (94,10,4,5,FALSE),
        (95,10,5,2,FALSE),
        (96,10,6,11,FALSE),
        (97,10,7,16,FALSE),
        (98,10,8,10,FALSE),
        (99,10,9,9,FALSE),
        (100,10,10,14,FALSE),
        (101,11,1,4,FALSE),
        (102,11,2,5,FALSE),
        (103,11,3,8,FALSE),
        (104,11,4,1,FALSE),
        (105,11,5,11,FALSE),
        (106,11,6,18,FALSE),
        (107,11,7,14,FALSE),
        (108,11,8,16,FALSE),
        (109,11,9,20,FALSE),
        (110,11,10,22,FALSE),
        (111,12,1,4,FALSE),
        (112,12,2,7,FALSE),
        (113,12,3,8,FALSE),
        (114,12,4,2,FALSE),
        (115,12,5,5,FALSE),
        (116,12,6,19,FALSE),
        (117,12,7,9,FALSE),
        (118,12,8,10,FALSE),
        (119,12,9,13,FALSE),
        (120,12,10,18,FALSE),
        (121,13,1,7,FALSE),
        (122,13,2,4,FALSE),
        (123,13,3,1,FALSE),
        (124,13,4,5,FALSE),
        (125,13,5,14,FALSE),
        (126,13,6,16,FALSE),
        (127,13,7,18,FALSE),
        (128,13,8,9,FALSE),
        (129,13,9,19,FALSE),
        (130,13,10,20,FALSE),
        (131,14,1,4,FALSE),
        (132,14,2,8,FALSE),
        (133,14,3,5,FALSE),
        (134,14,4,7,FALSE),
        (135,14,5,1,FALSE),
        (136,14,6,16,FALSE),
        (137,14,7,14,FALSE),
        (138,14,8,13,FALSE),
        (139,14,9,21,FALSE),
        (140,14,10,23,FALSE),
        (141,15,1,4,FALSE),
        (142,15,2,1,FALSE),
        (143,15,3,7,FALSE),
        (144,15,4,5,FALSE),
        (145,15,5,8,FALSE),
        (146,15,6,2,FALSE),
        (147,15,7,10,FALSE),
        (148,15,8,13,FALSE),
        (149,15,9,17,FALSE),
        (150,15,10,11,FALSE),
        (151,16,1,4,FALSE),
        (152,16,2,5,FALSE),
        (153,16,3,7,FALSE),
        (154,16,4,8,FALSE),
        (155,16,5,1,FALSE),
        (156,16,6,2,FALSE),
        (157,16,7,17,FALSE),
        (158,16,8,9,FALSE),
        (159,16,9,16,FALSE),
        (160,16,10,14,FALSE),
        (161,17,1,4,FALSE),
        (162,17,2,5,FALSE),
        (163,17,3,1,FALSE),
        (164,17,4,2,FALSE),
        (165,17,5,8,FALSE),
        (166,17,6,7,FALSE),
        (167,17,7,14,FALSE),
        (168,17,8,18,FALSE),
        (169,17,9,16,FALSE),
        (170,17,10,13,FALSE),
        (171,18,1,8,FALSE),
        (172,18,2,1,FALSE),
        (173,18,3,4,FALSE),
        (174,18,4,7,FALSE),
        (175,18,5,5,FALSE),
        (176,18,6,11,FALSE),
        (177,18,7,13,FALSE),
        (178,18,8,14,FALSE),
        (179,18,9,22,FALSE),
        (180,18,10,20,FALSE),
        (181,19,1,1,FALSE),
        (182,19,2,7,FALSE),
        (183,19,3,8,FALSE),
        (184,19,4,4,FALSE),
        (185,19,5,5,FALSE),
        (186,19,6,11,FALSE),
        (187,19,7,17,FALSE),
        (188,19,8,12,FALSE),
        (189,19,9,20,FALSE),
        (190,19,10,19,FALSE),
        (191,20,1,4,FALSE),
        (192,20,2,1,FALSE),
        (193,20,3,8,FALSE),
        (194,20,4,2,FALSE),
        (195,20,5,5,FALSE),
        (196,20,6,7,FALSE),
        (197,20,7,17,FALSE),
        (198,20,8,18,FALSE),
        (199,20,9,9,FALSE),
        (200,20,10,14,FALSE),
        (201,21,1,4,FALSE),
        (202,21,2,7,FALSE),
        (203,21,3,1,FALSE),
        (204,21,4,2,FALSE),
        (205,21,5,5,FALSE),
        (206,21,6,13,FALSE),
        (207,21,7,17,FALSE),
        (208,21,8,14,FALSE),
        (209,21,9,18,FALSE),
        (210,21,10,9,FALSE);
UNLOCK TABLES;

-- Table 18
LOCK TABLES `tblpoleposition` WRITE;
INSERT INTO `tblpoleposition` 
VALUES 	(1,4,1),
		(2,7,2),
        (3,7,3),
        (4,7,4),
        (5,4,5),
        (6,2,6),
        (7,7,7),
        (8,4,8),
        (9,5,9),
        (10,4,10),
        (11,7,11),
        (12,4,12),
        (13,4,13),
        (14,8,14),
        (15,4,15),
        (16,5,16),
        (17,4,17),
        (18,4,18),
        (19,2,19),
        (20,4,20),
        (21,4,21);
UNLOCK TABLES;

-- Table 19
LOCK TABLES `tblsnelsteronde` WRITE;
INSERT INTO `tblsnelsteronde` 
VALUES 	(1,2,1),
		(2,5,2),
        (3,2,3),
        (4,5,4),
        (5,2,5),
        (6,1,6),
        (7,1,7),
        (8,5,8),
        (9,8,9),
        (10,7,10),
        (11,4,11),
        (12,2,12),
        (13,5,13),
        (14,4,14),
        (15,9,15),
        (16,5,16),
        (17,7,17),
        (18,4,18),
        (19,5,19),
        (20,5,20),
        (21,7,21);
UNLOCK TABLES;

-- Table 20
LOCK TABLES `tblpersoonland` WRITE;
INSERT INTO `dab2-formule1`.`tblpersoonland` (`ID`, `persoonID`, `landID`)
VALUES 	(1, 1, 23),
		(2, 1, 13),
        (3, 2, 1),
        (4, 3, 11),
        (5, 4, 10),
        (6, 5, 24),
        (7, 6, 11),
        (8, 7, 11),
        (9, 8, 24),
        (10, 9, 27),
        (11, 10, 5),
        (12, 11, 11),
        (13, 12, 13),
        (14, 13, 5),
        (15, 14, 19),
        (17, 16, 8),
        (18, 17, 6),
        (19, 18, 8),
        (20, 19, 8),
        (21, 20, 28),
        (22, 21, 7),
        (23, 22, 26),
        (24, 23, 16),
        (25, 6, 25);
UNLOCK TABLES;

LOCK TABLES `tblbasis` WRITE;
INSERT INTO `dab2-formule1`.`tblbasis` (`ID`, `fabrikantID`, `strBasis`)
VALUES 	(1, 1, 'Milaan'),
		(2, 2, 'Maranello'),
        (3, 3, 'Stuttgart'),
        (4, 4, 'Parijs'),
        (5, 5, 'Tokio'),
        (6, 6, 'La Chaux-de-Fonds'),
        (7, 7, 'Milton Keynes, Northamptonshire'),
        (8, 8, 'Silverstone, North Carolina'),
        (9, 9, 'Kannapolis, North Carolina'),
        (10, 10, 'Woking, Surrey'),
        (11, 11, 'Hinwil'),
        (12, 12, 'Faenza'),
        (13, 13, 'Grove, Oxfordshire'),
        (14, 9, 'Megen, Netherlands');
UNLOCK TABLES;

LOCK TABLE `tblcareer` write;
INSERT INTO `dab2-formule1`.`tblcareer` (`ID`, `persoonID`, `teamID`, `functieID`, `vanSeizoen`, `totSeizoen`, `intNumber`) 
VALUES 	(1, 1, 6, 1, 2015, NULL, 33),
		(2, 2, 6, 1, 2018, 2018, 3),
        (3, 3, 9, 1, 2009, 2011, 12),
        (4, 4, 5, 1, 2018, NULL, 44),
        (5, 5, 5, 1, 2018, NULL, 77),
        (6, 6, 8, 1, 2017, 2017, 6),
        (7, 7, 1, 1, 2018, NULL, 5),
        (8, 8, 1, 1, 2018, 2018, 8),
        (9, 9, 3, 1, 2018, NULL, 67),
        (10, 10, 4, 1, 2018, 2018, 89),
        (11, 11, 7, 1, 2018, NULL, 37),
        (12, 12, 4, 1, 2018, 2018, 83),
        (13, 13, 7, 1, 2018, 2018, 16),
        (14, 14, 2, 1, 2018, NULL, 85),
        (15, 16, 2, 1, 2018, NULL, 26),
        (16, 17, 8, 1, 2018, 2018, 66),
        (17, 17, 8, 1, 2019, NULL, 86),
        (18, 18, 3, 1, 2018, NULL, 95),
        (19, 19, 9, 1, 2018, 2018, 99),
        (20, 20, 9, 1, 2018, 2018, 73),
        (21, 21, 10, 1, 2018, 2018, 77),
        (22, 22, 9, 1, 2018, 2018, 44),
        (23, 23, 10, 1, 2018, 2018, 21);
UNLOCK TABLES;

LOCK TABLE `tblauto` write;
INSERT INTO `dab2-formule1`.`tblauto`
(`ID`, `motorID`, `chassisID`, `seizoen`, `constructeurID`)
VALUES 	(1, 1, 1, 2018, 1),
		(2, 2, 2, 2018, 2),
        (3, 1, 3, 2018, 3),
        (4, 4, 4, 2018, 4),
        (5, 2, 5, 2018, 5),
        (6, 5, 6, 2018, 6),
        (7, 3, 7, 2018, 7),
        (8, 1, 8, 2018, 8),
        (9, 4, 9, 2018, 9),
        (10, 2, 10, 2018, 10);
unlock tables;