/* Aggregationen AVG() */

USE stocks;

-- Durchschnittspreis einer Aktie / Banken?
SELECT
	round(avg(price),2) Durchschnittspreis  -- Abgerundet / 2 Nachkommastellen
FROM stocks.ccc_list
WHERE industry = "Banks"
#WHERE industry = "Media"
;

-- KOMBINATION Preis/Dividende pro Industriesektor
SELECT
	sector AS Industriesektor,
    round(avg(price),2) AS Durchschnittspreis,  
	avg(dividend) AS Durchschnittsdividende
FROM stocks.ccc_list
GROUP BY sector
#ORDER BY avg(price) DESC
ORDER BY avg(dividend) DESC
;
