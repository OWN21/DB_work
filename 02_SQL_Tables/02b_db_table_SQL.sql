/* --------  Strukturen ------------ */

/* Anlegen DB */
CREATE DATABASE IF NOT EXISTS work;

/* DB auswählen */
USE work;

/* Tabelle anlegen, falls neu */
DROP TABLE IF EXISTS cats;

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate mรถglich
    DEFAULT-Werte eintragen
*/

/*
CREATE TABLE IF NOT EXISTS cats 
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT  NOT NULL DEFAULT 0
);

DESCRIBE cats;

INSERT INTO cats VALUES (0,"Alonzo",35);
INSERT INTO cats VALUES (1,"Grizabella",29);
INSERT INTO cats VALUES (2,"Gus",40);
INSERT INTO cats VALUES (5,"Alonzo",25);

SELECT * FROM cats;

*/

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate mรถglich
    AUTO_INCREMENT // i++
*/

CREATE TABLE IF NOT EXISTS cats 
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT  NOT NULL DEFAULT 0
);

DESCRIBE cats;

INSERT INTO cats (name,age) VALUES ("Alonzo",35);
INSERT INTO cats (name,age) VALUES ("Grizabella",29);
INSERT INTO cats (name,age) VALUES ("Gus",40);
INSERT INTO cats (name,age) VALUES ("Alonzo",25);

SELECT * FROM cats;



