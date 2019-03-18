-- vwKalender
/*
CREATE VIEW vwKalender AS
SELECT intGPnummer as Ronde, concat("GP van " , tblland.strNaam) as GP, tblland.blobVlag, concat(strNaamCircuit, strPlaats) as Circuit, `tblkalender`.dtDatum AS Datum FROM `dab2-formule1`.`tblkalender`
INNER JOIN `dab2-formule1`.`tblcircuit` ON `tblcircuit`.ID = `tblkalender`.circuitID
INNER JOIN `dab2-formule1`.`tblland` ON `tblcircuit`.landID = `tblland`.ID
where tblkalender.intSeizoen = 2018;
*/
-- vmTEamsCoureurs
select tblteam.strNaam as team, tblconstructeur.strnaam AS Constructeur, tblchassis.strNaam AS Chassis, 
tblmotor.strNaam as Motor, tblcareer.intNumber, concat(tblpersoon.strVoorNaam, " ",tblpersoon.strTussenVoegsel, tblpersoon.strAchterNaam) AS naam
from tblteam
RIGHT JOIN tblcareer on tblteam.ID = tblcareer.teamID
INNER JOIN tblpersoon ON tblcareer.persoonID = tblpersoon.ID
left join tblconstructeur ON tblteam.constructeurID = tblconstructeur.ID
LEFT JOIN tblauto ON tblauto.constructeurID = tblconstructeur.ID
LEFT JOIN tblmotor ON tblauto.motorID = tblmotor.ID
LEFT JOIN tblchassis ON tblauto.chassisID = tblchassis.ID
WHERE tblcareer.vanSeizoen <= 2018 and (tblcareer.totSeizoen >=2018 OR isnull(tblcareer.totSeizoen));