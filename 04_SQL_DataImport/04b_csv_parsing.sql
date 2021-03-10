/* CRUD Create | Update | Select | Delete */  

USE work;


/* Eingrenzen/Filtern durch WHERE */
/* UPDATE */
#UPDATE cats SET cat_name="Alonzo"; # Achtung, ALLES wird überschrieben!
UPDATE cats SET cat_name="Alonzo" WHERE id = 2; #Sicher!
#UPDATE cats SET cat_name="Alonzo" WHERE fur_color = "grey"; #Unsicher!

/* READ - SELECT */

SELECT * FROM cats;