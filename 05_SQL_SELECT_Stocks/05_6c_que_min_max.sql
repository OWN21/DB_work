/* Aggregationen MIN/MAX */

USE stocks;

-- Preis der teuersten/günstigsten Aktie?
SELECT
	max(price) AS "Max. Preis"
    #min(price) AS "Min. PREIS"
FROM stocks.ccc_list
;

# SELECT max(price) FROM stocks.ccc_list;
# SELECT min(price) FROM stocks.ccc_list;

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery

SELECT
	ticker SYM,
    c_name Unternehmen,
    price Aktienkurs
FROM stocks.ccc_list
#WHERE price = (SELECT max(price) FROM stocks.ccc_list)  # Subquery / Klammern!
WHERE price = (SELECT min(price) FROM stocks.ccc_list) 
;