
/* --------  Strukturen ------------ */

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* Anlegen DB */
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle anlegen, falls neu */
CREATE TABLE IF NOT EXISTS test 
(
	name VARCHAR(20),
    age INT
);

/* Struktur Tabelle anzeigen */
DESCRIBE test;

/* --------  Daten ------------ */

INSERT INTO test(name,age) VALUES ("Alonzo", 35);

SELECT * FROM test;

INSERT INTO test(age,name) VALUES (29, "Grizabella");

INSERT INTO test VALUES ();

DROP TABLE IF EXISTS test;
DROP DATABASE IF EXISTS boo;






