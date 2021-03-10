/* CRUD Create | Update | Select | Delete */  

USE work;


/* Eingrenzen/Filtern durch WHERE */
/* UPDATE */
#UPDATE cats SET cat_name="Alonzo"; # Achtung, ALLES wird überschrieben!
UPDATE cats SET cat_name="Alonzo" WHERE id = 2; #Sicher!
#UPDATE cats SET cat_name="Alonzo" WHERE fur_color = "grey"; #Unsicher!

/* READ - SELECT */
#SELECT * FROM cats; #gesamte Tabelle
#SELECT cat_name FROM cats; #Feld
#SELECT cat_name,cat_age FROM cats; #2 Felder kombiniert
#SELECT cat_age,cat_name FROM cats; #2 Felder kombiniert
#SELECT cat_age AS "Alter", cat_name AS "Name" FROM cats; #2 Felder / neue Namen

SELECT # Neue Ergebnistabelle wird angelegt ...
	cat_age AS "Alter", cat_name AS "Name"  # Feld-Auswahl / Anzeige-Name
FROM cats #Tabelle
/*Restriktionen durch WHERE*/
#WHERE id = 1  #id
#WHERE fur_color = "red" #fur_color
WHERE cat_age > 35; #Test 
;

/* Delete - Vorsicht!! */
DELETE FROM cats; #Unsicher!
DELETE FROM cats WHERE id = 2; #Sicher --> KEY
DELETE FROM cats WHERE cat_age > 35; #Unsicher!

SELECT * FROM cats;