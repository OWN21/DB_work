
#SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS stocks;

USE stocks;  #Focus auf DB

DROP TABLE IF EXISTS ccc_list; #Tab löschen, falls vorhanden

CREATE TABLE IF NOT EXISTS ccc_list # Tab. anlegen
(
	id INT NOT NULL PRIMARY KEY, #ID
    c_name VARCHAR(100) NOT NULL, #Name des Unternehmens
    ticker VARCHAR(10) NOT NULL, #DOW Ticker-Symbol
    sector VARCHAR(100) NOT NULL, #Industrie-Sektor
    industry VARCHAR(100) NOT NULL, #Branche
    no_yrs INT NOT NULL, #Jahre, seitdem ununterbrochen Div.ausgeschuettet werden
    ranking INT NOT NULL, #Ranking in der Liste
    price DECIMAL(6,2) NOT NULL, #Preis pro Aktie in $ per 12/2019
    yield DECIMAL(6,4) NOT NULL, #Dividendenrendite (Dividendenanteil *100) / Aktienkurs
    dividend DECIMAL(6,4) NOT NULL, #Dividendenanteil pro Aktie (Ausschuettung)
    payouts INT NOT NULL, #wieviel mal wird pro Jahr gezahlt?
    annualized DECIMAL(4,2) NOT NULL #jaehrlich
);

DESCRIBE ccc_list;

/*
/* Parsen & Einlesen der Daten 
LOAD DATA LOCAL INFILE "C:/Users/micro/Desktop/DB_work/04_SQL_DataImport/data/cats_export.csv"
INTO TABLE cats
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

SELECT * FROM cats;
*/


