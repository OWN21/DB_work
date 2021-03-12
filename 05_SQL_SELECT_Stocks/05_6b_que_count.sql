/* Aggregationen COUNT */

USE stocks;

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

-- Welche VERSCHIEDENEN Sektoren ?
SELECT DISTINCT sector FROM stocks.ccc_list ORDER BY sector ASC;
-- Wieviele VERSCHIEDENE Sektoren ?
SELECT 
	COUNT(DISTINCT sector) "Anzahl Industriesektoren"
FROM stocks.ccc_list;

-- Welche VERSCHIEDENEN Branchen ?
SELECT DISTINCT industry FROM stocks.ccc_list ORDER BY industry ASC;
-- Wieviele VERSCHIEDENE Branchen ?
SELECT 
	COUNT(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc_list;

-- Wieviele VERSCHIEDENE Branchen gibt es 
-- in den den jeweiligen Industriesektoren?
SELECT
	sector Industriesektor, # NICHT aggregiert --> organisch
    COUNT(DISTINCT industry) Branchen #aggregiert. durch Fkt. entstanden
FROM stocks.ccc_list
WHERE sector LIKE "Consumer%"  -- Filter in NICHT aggr. Feldern 
#WHERE sector LIKE "%ials"  -- Filter in NICHT aggr. Feldern 
GROUP BY sector
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER BY Branchen DESC
;

-- Wieviele Firmen gibt es in den jeweiligen Branchen?
SELECT
    industry AS Branche,
    #COUNT(industry) Unternehmen
    COUNT(DISTINCT c_name) Unternehmen
FROM stocks.ccc_list
GROUP BY industry
HAVING Unternehmen >= 10
ORDER BY Unternehmen DESC;

-- Wieviele Unternehmen zahlen 12/4/2/1 ?
SELECT
    payouts "Auszahlungen p.a.",
    COUNT(payouts) "Anzahl"
FROM stocks.ccc_list
GROUP BY payouts
ORDER BY payouts DESC;






