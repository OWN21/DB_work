
/* QUERIES Sortierung */

USE stocks;

-- ASC/ DSC
-- sortieren nach Sektor /aufsteigend (alphabetisch)


-- Eingrenzen/ Filtern WHERE& AND/OR/NOT etc.

SELECT
ticker AS "SYM",
c_name "UNTERNEHMEN",
price "Preis in US Dollar",
payouts "Zahlung p.a.",
dividend "Dividene",
CONCAT(sector," | " ,industry) "Operations"

FROM stocks.ccc_list
-- Einzeldaten Strings
#WHERE sector = "Communication Services"
#WHERE industry = "Media"

-- Kombiation durch AND
#WHERE sector = "Communication Services" AND industry = "Entertainment"

-- Kombiation durch AND/ OR
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR idustry = "Media")

-- Kombiation durch AND/ NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"

ORDER BY price ASC 
#ORDER BY payouts ASC
LIMIT 40;



