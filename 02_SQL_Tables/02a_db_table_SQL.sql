/* --------  Strukturen ------------ */

/* Anlegen DB */
CREATE DATABASE IF NOT EXISTS work;

/* DB auswählen */
USE work;

/* Tabelle anlegen, falls neu */
DROP TABLE IF EXISTS cats;

/* 	 
	NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
*/
CREATE TABLE IF NOT EXISTS cats 
(
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT  NOT NULL DEFAULT 0
);

DESCRIBE cats;

/* Eingabe von Leerwerten --> Default */
INSERT INTO cats VALUES ();
SELECT * FROM cats;

/* Mehrfach-Eingabe von Daten (1) */
INSERT INTO cats
	(name,age)
VALUES
	("Alonzo",35),
    ("Grizabella", 29),
    ("Gus", 55)
;

INSERT INTO cats VALUES ("Das ist ein vieeeeeeeel zu langer String", 10);

INSERT INTO cats VALUES ("Alonzo", 35);


