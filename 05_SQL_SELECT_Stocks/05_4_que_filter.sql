/* Filtern mit WHERE */

USE stocks;

-- Index
/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/

-- Eingrenzen/Filtern WHERE & AND/OR/NOT etc.
SELECT 
ticker AS "SYM",
c_name "Unternehmen",
price "Preis in US Dollar",
payouts "Zahlung p.a.",
dividend "Dividende",
CONCAT(sector," | ",industry) "Operations"
FROM stocks.ccc_list 
-- Einzeldaten / Strings
#WHERE sector = "Communication Services"
#WHERE industry = "Media"
-- Kombination durch AND
#WHERE sector = "Communication Services" AND industry = "Entertainment"
-- Kombination durch AND / OR
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
-- Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"
ORDER BY price ASC
#ORDER BY payouts ASC
LIMIT 40; 





