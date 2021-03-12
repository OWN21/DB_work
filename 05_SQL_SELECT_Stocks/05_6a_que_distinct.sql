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

-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?
SELECT
	DISTINCT payouts "Auszahlungen/Jahr"
FROM stocks.ccc_list
ORDER BY payouts ASC;

-- Welche Unternehmen zahlen monatlich? // Übung
SELECT
	ticker SYM,
    c_name Unternehmen,
    industry Branche
FROM stocks.ccc_list
WHERE payouts = 12
ORDER BY c_name ASC;
