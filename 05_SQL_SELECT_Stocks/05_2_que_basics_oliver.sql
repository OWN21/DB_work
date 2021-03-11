/* QUERIES Basics */

USE stocks;

/*
SELECT * FROM stocks.ccc_list; 

SELECT * FROM stocks.ccc_list LIMIT 10; 


SELECT
ticker AS "SYMBOL",
c_name AS "UNTERNEHMEN",
price AS "Kurs in $"

FROM stocks.ccc_list
LIMIT 10;
*/

SELECT
ticker "SYMBOL",
c_name "UNTERNEHMEN",
CONCAT(sector," | " ,industry) "Operations"

FROM stocks.ccc_list
LIMIT 5;