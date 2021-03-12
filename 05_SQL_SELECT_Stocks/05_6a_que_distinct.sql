/* DISTINCT */

USE stocks;

-- alle Sektoren
/*SELECT
	sector
FROM stocks.ccc_list
ORDER BY sector ASC
LIMIT 100;*/

-- nur das erste Auftreten von Sektoren
-- welche VERSCHIEDENEN Sektoren gibt es?
/*SELECT
	DISTINCT sector Industriesektoren
FROM stocks.ccc_list
ORDER BY sector ASC;*/

-- welche VERSCHIEDENEN Branchen gibt es?
SELECT
	DISTINCT industry Branchen
FROM stocks.ccc_list
ORDER BY industry ASC;