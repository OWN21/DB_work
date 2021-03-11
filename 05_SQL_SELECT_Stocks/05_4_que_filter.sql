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
/*
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
*/

-- Eingrenzen/Filtern WHERE & LIKE + Parameter
/*
SELECT 
ticker "SYM",
c_name "Unternehmen",
industry "Branche"
FROM stocks.ccc_list 
-- scharfe Suche nach Strings
#WHERE industry = "Media"
-- unschärfere Suche --
-- Branchenname beginnt mit ... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"
-- Branchenname endet mit ... , davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthaelt ...
#WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "Me__a"
#WHERE industry LIKE "M_d_a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"

#WHERE industry LIKE "%ment" 
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" 
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"

ORDER BY industry ASC
LIMIT 40; */

-- Eingrenzen/Filtern WHERE & RegEx
/*
SELECT
	c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name RLIKE "^[AZ]"
ORDER BY c_name;*/

--  Eingrenzen/Filtern WHERE & IN / NOT IN
SELECT 
ticker "SYM",
c_name "Unternehmen",
sector "Sektor",
industry "Branche"
FROM stocks.ccc_list 
#WHERE sector = "Financials"
#WHERE industry IN ("Beverages","Banks") #OR ...
WHERE sector = "Financials" AND industry NOT IN ("Banks","Insurance")
ORDER BY industry DESC;


