/* String-Funktionen */

USE stocks;

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
*/

-- CONCAT() / Verknuepfung "string" + "string" ....
/*SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    concat("Ops: ",sector," : ",industry) "Operation"
FROM stocks.ccc_list
#ggf. Restriktionen
LIMIT 10;*/

-- UPPER() --> alles in Großbuchstaben
SELECT
	ticker AS "SYM",
    upper(c_name) "Unternehmen"
FROM stocks.ccc_list
#ggf. Restriktionen
LIMIT 10;

-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
SELECT
	ticker AS "SYM",
    lower(c_name) "Unternehmen",
    lower(concat("Ops: ",sector," : ",industry)) AS "Operation"
FROM stocks.ccc_list
#ggf. Restriktionen
LIMIT 10;

