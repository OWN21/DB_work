
/* QUERIES Sortierung */

USE stocks;
-- ASC/ DSC
-- sortieren nach Sektor /aufsteigend (alphabetisch)
/*
SELECT
ticker AS "SYMBOL",
c_name "UNTERNEHMEN",
CONCAT(sector," | " ,industry) "Operations"

FROM stocks.ccc_list
#ORDER BY ticker ASC
#ORDER BY ticker DESC
#ORDER BY sector, industry ASC
ORDER BY sector ASC, industry DESC

LIMIT 20; 
*/

-- sortieren nach Aktienpreis aufsteigend/ absteigend (nummerisch)
SELECT
ticker AS "SYMBOL",
c_name "UNTERNEHMEN",
price "Preis in Dollar",
payouts "Zahlung p.a.",
no_yrs "Jahre++",

CONCAT(sector," | " ,industry) "Operations"

FROM stocks.ccc_list
#ORDER BY price ASC # beginnend mit günstigster Aktie
#ORDER BY price DESC # beginnend mit teuerster Aktie
ORDER BY no_yrs DESC # beginnend mit längster Dividenten Histrie
LIMIT 20;