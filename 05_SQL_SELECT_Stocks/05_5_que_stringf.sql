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
SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    CONCAT("Ops: ",sector," : ",industry) "Operation"
FROM stocks.ccc_list
#ggf. Restriktionen
LIMIT 10;